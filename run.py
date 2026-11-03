#!/usr/bin/env python3
"""Run the benchmark with the solvers ./z3-<suffix> (or --z3 BINARY) and write results/<suffix>.csv for each of them.

Use run_memory_ceiling.sh to run this script inside a systemd scope with a memory ceiling for all the solver processes.
The formulas are all the .smt2 files in the --tests folders and their subfolders, named by their paths relative to the folder that contains all of them.
The options of the solver depend on the set of a formula, the folder memberships/ or mixed_constraints/ in its path (SOLVER_OPTIONS).
The runs of all the solvers on all the formulas are shuffled into one pool, so that the solvers run under the same load.
For every solver, results/<suffix>.csv has the results of all the formulas and results/<suffix>-failed.csv those of the formulas that it did not pass.
Formulas with a wrong result are saved to test_output/<suffix>/failed/ and formulas without a result (unknown, error, crash) to test_output/<suffix>/unknown/, each with the solver output appended.
The solvers run in a temporary folder, so that the files they write (e.g., .z3-trace of debug builds) do not stay.

usage: run.py <suffix> [<suffix> ...] [--z3 BINARY] [--jobs N] [--timeout SECONDS] [--tests DIR [DIR ...]]
"""

import argparse
import csv
import os
import random
import re
import shutil
import subprocess
import sys
import tempfile
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

from compare import load_results, print_outcomes

HERE = Path(__file__).resolve().parent

# ---------------------------------------------------------------- settings of this benchmark

# Options passed to the solver before the formula, by the folder of its set.
# The formulas contain no options of a solver, so the semantics that their statuses assume is set here.
# The statuses of the memberships assume a full match, the default of z3-noodler.
# The statuses of the mixed constraints assume the engine semantics, in which RegExp.test() searches for a matching substring.
SOLVER_OPTIONS = {"memberships": [], "mixed_constraints": ["smt.str.ecma_engine_semantics=true"]}
# Folder with the formulas, unless --tests is given.
DEFAULT_TESTS = HERE / "smt_out"

# ---------------------------------------------------------------- outcomes and output

# Outcomes of a formula, in the order of the summary.
# passed: the solver answered the expected sat or unsat; wrong: it answered the other one.
# timeout, unknown, crash: the solver gave no answer; error: it printed an error, so an answer would not count either.
OUTCOMES = ["passed", "wrong", "timeout", "unknown", "error", "crash"]
# Subfolders of test_output/<suffix>/ where the formulas with these outcomes are saved together with the solver output.
SAVE_FOLDERS = {"wrong": "failed", "unknown": "unknown", "error": "unknown", "crash": "unknown"}

# Colors of the outcomes in the terminal.
GREEN = "\033[32m"
YELLOW = "\033[33m"
RED = "\033[31m"
RESET = "\033[0m"
COLORS = {"passed": GREEN, "wrong": RED, "timeout": YELLOW, "unknown": YELLOW, "error": RED, "crash": YELLOW}

# Columns of results/<suffix>.csv and results/<suffix>-failed.csv, compare.py reads them by these names.
# The message is the error or the last line of the solver output, for the formulas that the solver did not pass.
CSV_COLUMNS = ["file", "family", "expected", "result", "seconds", "message"]
CSV_DELIMITER = ";"
# The progress is printed after every PROGRESS_INTERVAL runs.
PROGRESS_INTERVAL = 100


def family_of(file: Path) -> str:
    """Gets the family of a formula from its path relative to the folder with the formulas.

    The generators name the files <family>_<index>.smt2, e.g. random_mix_0042.smt2 is a formula of random_mix.
    The folder of the file is a prefix of the family, e.g. mixed_constraints/bmp/random_mix.

    Args:
        file (Path): The relative path of the formula.

    Returns:
        str: The family.
    """
    return (file.parent / file.name.rsplit("_", 1)[0]).as_posix()


def solver_options(path: Path) -> list[str] | None:
    """Gets the options of the solver for a formula from the folder of its set.

    Args:
        path (Path): The .smt2 formula, an absolute path.

    Returns:
        list[str] | None: The options; None if no folder of the path is a set of SOLVER_OPTIONS.
    """
    # The innermost folder of a set counts, so that a folder of the same name above the repository does not.
    for folder in reversed(path.parent.parts):
        if folder in SOLVER_OPTIONS:
            return SOLVER_OPTIONS[folder]
    return None


def read_expected_status(path: Path) -> str | None:
    """Reads the expected status of a formula from its line (set-info :status sat).

    Args:
        path (Path): The .smt2 formula.

    Returns:
        str | None: The status, e.g. "sat" or "unsat"; None if the formula has no status.
    """
    match = re.search(r"\(set-info :status (\w+)\)", path.read_text())
    return match.group(1) if match else None


def has_error(output: str) -> bool:
    """Checks whether the solver printed an error.

    An error means that the solver skipped a command (e.g., an assertion it cannot parse), so even its answer is not one to the formula.

    Args:
        output (str): The output of the solver.

    Returns:
        bool: True if a line of the output starts with "(error"; False otherwise.
    """
    return any(line.startswith("(error") for line in output.splitlines())


def run_solver(path: Path, executable: Path, options: list[str], timeout: float, cwd: str) -> tuple[str, float, str]:
    """Runs the solver on a formula.

    The time is the wall-clock time of the solver process, including its start-up.

    Args:
        path (Path): The .smt2 formula, an absolute path.
        executable (Path): The solver binary, an absolute path.
        options (list[str]): The options of the solver for the formula.
        timeout (float): Time limit of the solver in seconds.
        cwd (str): The folder the solver runs in.

    Returns:
        tuple[str, float, str]: The result ("sat", "unsat", "timeout", "unknown", "error" or "crash"), the time in seconds and the output of the solver.
    """
    command = [executable, *options, f"-file:{path}"]
    start = time.perf_counter()
    try:
        completed = subprocess.run(
            command,
            check=False,
            stdin=subprocess.DEVNULL,
            capture_output=True,
            text=True,
            errors="replace",
            timeout=timeout,
            cwd=cwd,
        )
    # The output so far is in bytes.
    # An error in it means that the solver did not solve the whole formula, which matters more than the timeout.
    except subprocess.TimeoutExpired as expired:
        output = b"".join(part or b"" for part in (expired.stdout, expired.stderr)).decode(errors="replace")
        return ("error" if has_error(output) else "timeout"), timeout, output
    seconds = time.perf_counter() - start
    output = completed.stdout + completed.stderr
    lines = output.splitlines()

    if has_error(output):
        return "error", seconds, output

    # The solver answered.
    if "sat" in lines:
        return "sat", seconds, output
    if "unsat" in lines:
        return "unsat", seconds, output

    # Killed by a signal (e.g. by the OOM killer at the memory ceiling) or a failed assertion of a debug build.
    if completed.returncode < 0 or "ASSERTION VIOLATION" in output:
        return "crash", seconds, output
    return "unknown", seconds, output


def classify(result: str, expected: str | None) -> str:
    """Classifies the result of the solver into one of OUTCOMES.

    compare.py has the same function, keep the two the same.

    Args:
        result (str): The result returned by run_solver().
        expected (str | None): The expected status of the formula.

    Returns:
        str: "passed" or "wrong" if the solver answered sat or unsat; otherwise the result ("timeout", "unknown", "error" or "crash").
    """
    if result in ("sat", "unsat"):
        return "passed" if result == expected else "wrong"
    return result


def message_of(output: str) -> str:
    """Gets the message of the solver output: its first error, or its last line.

    Args:
        output (str): The output of the solver.

    Returns:
        str: The message, empty if there is no output.
    """
    lines = [line for line in output.splitlines() if line.strip()]
    errors = [line for line in lines if line.startswith("(error")]
    return (errors or lines or [""])[0 if errors else -1]


def save_formula_with_output(path: Path, output: str, target: Path) -> None:
    """Copies a formula and appends the output of the solver to the copy.

    Args:
        path (Path): The .smt2 formula.
        output (str): The output of the solver on the formula.
        target (Path): The path of the copy.
    """
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(path.read_text() + "\n" + output)


def sort_csv(path: Path) -> None:
    """Sorts the rows of a CSV written by this script by the file of the formula.

    Args:
        path (Path): The CSV.
    """
    with open(path, newline="") as f:
        rows = list(csv.DictReader(f, delimiter=CSV_DELIMITER))
    with open(path, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_COLUMNS, delimiter=CSV_DELIMITER)
        writer.writeheader()
        writer.writerows(sorted(rows, key=lambda row: row["file"]))


def parse_arguments() -> argparse.Namespace:
    """Parses the command line arguments.

    Returns:
        argparse.Namespace: The arguments.
    """
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument(
        "suffixes", metavar="suffix", nargs="+", help="label of a run, the solver is ./z3-<suffix> unless --z3 is given"
    )
    parser.add_argument("--z3", metavar="BINARY", help="solver binary, only with a single suffix")
    parser.add_argument(
        "--jobs", metavar="N", type=int, default=4, help="parallel solver processes (default %(default)s)"
    )
    parser.add_argument(
        "--timeout",
        metavar="SECONDS",
        type=float,
        default=10.0,
        help="timeout per formula in seconds (default %(default)s)",
    )
    parser.add_argument(
        "--tests",
        metavar="DIR",
        nargs="+",
        type=Path,
        default=[DEFAULT_TESTS],
        help="folders with the formulas, searched recursively (default smt_out)",
    )
    args = parser.parse_args()
    if args.z3 and len(args.suffixes) > 1:
        parser.error("--z3 works only with a single suffix")
    return args


def main() -> None:
    """Runs the solvers on all the formulas, writes their results to the CSVs and prints a summary."""
    args = parse_arguments()

    # The solver of a suffix is --z3 BINARY if it is given, otherwise ./z3-<suffix> next to this script.
    executables = {
        suffix: Path(args.z3).absolute() if args.z3 else HERE / f"z3-{suffix}" for suffix in args.suffixes
    }
    for executable in executables.values():
        if not executable.is_file():
            sys.exit(f"Missing solver binary: {executable}")
    for folder in args.tests:
        if not folder.is_dir():
            sys.exit(f"Missing folder with the formulas: {folder}")

    # The formulas by their paths relative to the folder that contains all the --tests folders.
    folders = [folder.resolve() for folder in args.tests]
    base = Path(os.path.commonpath(folders))
    formulas = {path.relative_to(base): path for folder in folders for path in sorted(folder.rglob("*.smt2"))}
    # A formula outside the folders of the sets would be solved with semantics that its status may not assume.
    options = {file: solver_options(path) for file, path in formulas.items()}
    for file, path in formulas.items():
        if options[file] is None:
            sys.exit(f"Formula outside the folders {', '.join(SOLVER_OPTIONS)}, its semantics is unknown: {path}")

    # Remove the formulas saved by the last runs with these suffixes.
    for suffix in args.suffixes:
        shutil.rmtree(HERE / "test_output" / suffix, ignore_errors=True)
    results_dir = HERE / "results"
    results_dir.mkdir(exist_ok=True)

    # All the runs in a random order.
    runs = [(suffix, file) for suffix in args.suffixes for file in formulas]
    random.Random(0).shuffle(runs)
    counts = {suffix: dict.fromkeys(OUTCOMES, 0) for suffix in args.suffixes}

    # For every suffix, one CSV of all the results ("all") and one of the formulas that were not passed ("failed").
    csv_paths = {}
    for suffix in args.suffixes:
        csv_paths[suffix, "all"] = results_dir / f"{suffix}.csv"
        csv_paths[suffix, "failed"] = results_dir / f"{suffix}-failed.csv"
    csv_files = {key: open(path, "w", newline="") for key, path in csv_paths.items()}  # noqa: SIM115
    writers = {
        key: csv.DictWriter(f, fieldnames=CSV_COLUMNS, delimiter=CSV_DELIMITER) for key, f in csv_files.items()
    }
    for writer in writers.values():
        writer.writeheader()

    with tempfile.TemporaryDirectory() as cwd, ThreadPoolExecutor(max_workers=args.jobs) as pool:
        # The worker threads run the solvers in parallel.
        # The main thread gets the results as they finish, and only it writes the CSVs and the saved formulas.
        futures = {
            pool.submit(run_solver, formulas[file], executables[suffix], options[file], args.timeout, cwd): (
                suffix,
                file,
            )
            for suffix, file in runs
        }
        try:
            for done, future in enumerate(as_completed(futures), start=1):
                suffix, file = futures[future]
                result, seconds, output = future.result()
                path = formulas[file]
                expected = read_expected_status(path)
                outcome = classify(result, expected)
                counts[suffix][outcome] += 1

                # The rows are flushed at once, so that the results so far stay in the CSVs if the run is killed.
                row = {
                    "file": file.as_posix(),
                    "family": family_of(file),
                    "expected": expected,
                    "result": result,
                    "seconds": f"{seconds:.3f}",
                    "message": "" if outcome == "passed" else message_of(output),
                }
                for kind in ["all"] if outcome == "passed" else ["all", "failed"]:
                    writers[suffix, kind].writerow(row)
                    csv_files[suffix, kind].flush()

                # Report the formulas without the expected answer and save some of them with the solver output.
                if outcome != "passed":
                    print(f"{COLORS[outcome]}{outcome.capitalize()}: {suffix} {file.as_posix()}{RESET}")
                if outcome in SAVE_FOLDERS:
                    target = HERE / "test_output" / suffix / SAVE_FOLDERS[outcome] / file
                    save_formula_with_output(path, output, target)

                if done % PROGRESS_INTERVAL == 0:
                    print(f"{done}/{len(runs)} done", flush=True)

        # On Ctrl-C, the runs that have not started yet are cancelled.
        # Otherwise, the pool would do all of them before the script ends.
        except KeyboardInterrupt:
            pool.shutdown(cancel_futures=True)
            raise
        finally:
            for f in csv_files.values():
                f.close()

    # The rows are written in the order the runs finished, they are sorted at the end.
    for path in csv_paths.values():
        sort_csv(path)

    # Summary of every run, e.g. "devel: Passed: 950, Wrong: 0, Timeout: 40, Unknown: 10, Error: 0, Crash: 0".
    for suffix in args.suffixes:
        summary = ", ".join(f"{COLORS[o]}{o.capitalize()}: {counts[suffix][o]}{RESET}" for o in OUTCOMES)
        print(f"{suffix}: {summary}")
        print(f"Results: {csv_paths[suffix, 'all']}, not passed: {csv_paths[suffix, 'failed']}")
    print()
    loaded = [(suffix, load_results(csv_paths[suffix, "all"])) for suffix in args.suffixes]
    print_outcomes(loaded, sorted({family_of(file) for file in formulas}))


if __name__ == "__main__":
    main()
