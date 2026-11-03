#!/usr/bin/env python3
"""Compare two runs of the benchmark, i.e., two CSVs written by run.py.

Prints the outcomes of both runs (in total and per family), the formulas whose outcome changed, and the solving times of the formulas that both runs solved.
Writes the formulas that at least one of the runs did not pass to results/<before>-vs-<after>.csv (or --csv FILE), with the results of both runs side by side.

usage: compare.py <before.csv> <after.csv> [--csv FILE]
"""

import argparse
import collections
import csv
from pathlib import Path
from typing import Any

# Outcomes of a formula, in the order of the columns.
# passed: the solver answered the expected sat or unsat; wrong: it answered the other one.
# timeout, unknown, crash: the solver gave no answer; error: it printed an error, so an answer would not count either.
OUTCOMES = ["passed", "wrong", "timeout", "unknown", "error", "crash"]
# Name of the last row of the tables, which contains all the formulas.
TOTAL = "total"
# How many files are shown for every change of the outcome.
SHOWN_CHANGED_FILES = 6
# How many formulas with the biggest speedups and slowdowns are shown.
SHOWN_DIFFERENCES = 8
# Columns of every run in the CSV of the formulas that were not passed, prefixed by the label of the run.
RUN_COLUMNS = ["result", "outcome", "seconds", "message"]

# Rows of a CSV by the file name of the formula.
# Every row has the columns of run.py (file, family, expected, result, seconds, message) and the outcome, see load_results().
Results = dict[str, dict[str, Any]]


def classify(result: str, expected: str | None) -> str:
    """Classifies the result of the solver into one of OUTCOMES.

    run.py has the same function, keep the two the same.

    Args:
        result (str): The result of the solver.
        expected (str | None): The expected status of the formula.

    Returns:
        str: "passed" or "wrong" if the solver answered sat or unsat; otherwise the result ("timeout", "unknown", "error" or "crash").
    """
    if result in ("sat", "unsat"):
        return "passed" if result == expected else "wrong"
    return result


def load_results(path: Path) -> Results:
    """Loads the results of a run, adds the outcomes and converts the times to numbers.

    The columns are separated by semicolons, or by commas in the CSVs of older versions of run.py, which have no message either.

    Args:
        path (Path): The CSV written by run.py.

    Returns:
        Results: The rows by the file name of the formula.
    """
    results = {}
    with open(path, newline="") as f:
        delimiter = ";" if ";" in f.readline() else ","
        f.seek(0)
        for row in csv.DictReader(f, delimiter=delimiter):
            row["outcome"] = classify(row["result"], row["expected"])
            row["seconds"] = float(row["seconds"])
            row.setdefault("message", "")
            results[row["file"]] = row
    return results


def in_family(row: dict[str, Any], family: str) -> bool:
    """Checks whether a formula belongs to a family, every formula belongs to TOTAL.

    Args:
        row (dict[str, Any]): The row of the formula.
        family (str): The family or TOTAL.

    Returns:
        bool: True if the formula belongs to the family; False otherwise.
    """
    return family in (TOTAL, row["family"])


def print_outcomes(runs: list[tuple[str, Results]], families: list[str]) -> None:
    """Prints the numbers of the formulas with every outcome and their total time, per family and run.

    Args:
        runs (list[tuple[str, Results]]): The (label, results) pairs of the runs.
        families (list[str]): The families, TOTAL is added at the end.
    """
    family_width = max(len(family) for family in families + ["family", TOTAL])
    label_width = max(len(label) for label, _ in runs + [("run", {})])
    print(
        f"{'family':<{family_width}} {'run':<{label_width}}"
        + "".join(f"{outcome:>9}" for outcome in OUTCOMES)
        + f"{'time [s]':>11}"
    )
    for family in families + [TOTAL]:
        for label, results in runs:
            rows = [row for row in results.values() if in_family(row, family)]
            counts = collections.Counter(row["outcome"] for row in rows)
            total_seconds = sum(row["seconds"] for row in rows)
            print(
                f"{family:<{family_width}} {label:<{label_width}}"
                + "".join(f"{counts[outcome]:>9}" for outcome in OUTCOMES)
                + f"{total_seconds:>11.1f}"
            )


def print_changed_outcomes(before: Results, after: Results, names: list[str], labels: tuple[str, str]) -> None:
    """Prints the formulas whose outcome changed, grouped by the change.

    Args:
        before (Results): The results of the first run.
        after (Results): The results of the second run.
        names (list[str]): The formulas of both runs.
        labels (tuple[str, str]): The labels of the two runs.
    """
    print(f"\nChanged results ({labels[0]} -> {labels[1]}):")

    # The formulas of every change, {(old outcome, new outcome): names}.
    changes = collections.defaultdict(list)
    for name in names:
        old, new = before[name]["outcome"], after[name]["outcome"]
        if old != new:
            changes[(old, new)].append(name)

    if not changes:
        print("  none")
    # The most frequent changes first.
    for (old, new), changed_names in sorted(changes.items(), key=lambda change: len(change[1]), reverse=True):
        shown = " ".join(changed_names[:SHOWN_CHANGED_FILES])
        if len(changed_names) > SHOWN_CHANGED_FILES:
            shown += " ..."
        print(f"  {old:<8} -> {new:<8} {len(changed_names):4d}  {shown}")


def print_solving_times(
    before: Results, after: Results, solved: list[str], families: list[str], labels: tuple[str, str]
) -> None:
    """Prints the total times of the formulas that both runs solved, per family.

    Args:
        before (Results): The results of the first run.
        after (Results): The results of the second run.
        solved (list[str]): The formulas that both runs solved.
        families (list[str]): The families, TOTAL is added at the end.
        labels (tuple[str, str]): The labels of the two runs.
    """
    family_width = max(len(family) for family in families + ["family", TOTAL])
    print(f"\nSolved by both: {len(solved)} formulas")
    print(f"{'family':<{family_width}} {'count':>7} {labels[0] + ' [s]':>11} {labels[1] + ' [s]':>11} {'ratio':>8}")
    for family in families + [TOTAL]:
        names = [name for name in solved if in_family(before[name], family)]
        if not names:
            continue
        before_seconds = sum(before[name]["seconds"] for name in names)
        after_seconds = sum(after[name]["seconds"] for name in names)
        # The maximum avoids a division by zero if the first run solved all the formulas instantly.
        ratio = after_seconds / max(before_seconds, 1e-9)
        print(f"{family:<{family_width}} {len(names):7d} {before_seconds:11.1f} {after_seconds:11.1f} {ratio:8.2f}")


def print_biggest_differences(before: Results, after: Results, solved: list[str]) -> None:
    """Prints the formulas with the biggest speedups and slowdowns.

    Args:
        before (Results): The results of the first run.
        after (Results): The results of the second run.
        solved (list[str]): The formulas that both runs solved.
    """
    # The formulas from the biggest speedup to the biggest slowdown.
    by_difference = sorted(solved, key=lambda name: after[name]["seconds"] - before[name]["seconds"])
    speedups = by_difference[:SHOWN_DIFFERENCES]
    slowdowns = list(reversed(by_difference))[:SHOWN_DIFFERENCES]
    name_width = max((len(name) for name in speedups + slowdowns), default=0)

    for title, names in [("Biggest speedups", speedups), ("Biggest slowdowns", slowdowns)]:
        print(f"\n{title}:")
        for name in names:
            print(f"  {name:<{name_width}} {before[name]['seconds']:8.3f} s -> {after[name]['seconds']:8.3f} s")


def write_not_passed(path: Path, before: Results, after: Results, names: list[str], labels: tuple[str, str]) -> None:
    """Writes the formulas that at least one of the runs did not pass, with the results of both runs side by side.

    Args:
        path (Path): The CSV to write.
        before (Results): The results of the first run.
        after (Results): The results of the second run.
        names (list[str]): The formulas of both runs.
        labels (tuple[str, str]): The labels of the two runs, the prefixes of their columns.
    """
    columns = ["file", "family", "expected"] + [f"{label}_{column}" for label in labels for column in RUN_COLUMNS]
    with open(path, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=columns, delimiter=";")
        writer.writeheader()
        for name in names:
            if before[name]["outcome"] == after[name]["outcome"] == "passed":
                continue
            row = {"file": name, "family": before[name]["family"], "expected": before[name]["expected"]}
            for label, results in zip(labels, (before, after)):
                row.update({f"{label}_{column}": results[name][column] for column in RUN_COLUMNS})
            writer.writerow(row)
    print(f"\nNot passed by at least one run: {path}")


def parse_arguments() -> argparse.Namespace:
    """Parses the command line arguments.

    Returns:
        argparse.Namespace: The arguments.
    """
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("before", type=Path, help="CSV of the first run, e.g. results/before.csv")
    parser.add_argument("after", type=Path, help="CSV of the second run, e.g. results/after.csv")
    parser.add_argument(
        "--csv",
        metavar="FILE",
        type=Path,
        help="CSV of the formulas that a run did not pass (default results/<before>-vs-<after>.csv)",
    )
    return parser.parse_args()


def main() -> None:
    """Prints the comparison of the two runs and writes the formulas that a run did not pass."""
    args = parse_arguments()
    before, after = load_results(args.before), load_results(args.after)
    # The runs are labeled by the names of their CSVs, e.g. results/after.csv is "after".
    labels = (args.before.stem, args.after.stem)

    # The formulas of both runs, and their families.
    common = sorted(set(before) & set(after))
    families = sorted({before[name]["family"] for name in common})
    solved = [name for name in common if before[name]["outcome"] == after[name]["outcome"] == "passed"]

    print_outcomes([(labels[0], before), (labels[1], after)], families)
    print_changed_outcomes(before, after, common, labels)
    print_solving_times(before, after, solved, families, labels)
    print_biggest_differences(before, after, solved)
    write_not_passed(args.csv or args.before.parent / f"{labels[0]}-vs-{labels[1]}.csv", before, after, common, labels)


if __name__ == "__main__":
    main()
