#!/usr/bin/env python3
"""Generate SMT-LIB benchmarks with one membership of a string constant in an ECMAScript regex each.

Every pattern of the patterns file gets a payload of the payloads file, drawn by a linear congruential generator.
The status of the formula is whether the regex with no flags matches the whole payload, tested in node by RegExp.test() of ^(?:pattern)$ (js_oracle.js).
This full match is the default semantics of re.from_ecma2020 in z3-noodler and the semantics of OSTRICH, so a solver needs no option for the formulas.
The formulas contain no options of a solver, so that any solver can read them.
If the test of a draw times out, another payload is drawn; a pattern without a result after as many draws as there are payloads is skipped.

This is the port of make_smt_random.js, which generated the first version of the formulas.
It draws the same payloads for the patterns as there, until make_smt_random.js drew another payload after a test that took more than its limit of 1 s.
Unlike there, the status is a full match instead of RegExp.test() of the pattern, which searches for a matching substring.
The formulas also contain only printable ASCII, the other characters are written as SMT-LIB escapes \\u{...}.

usage: make_smt_memberships.py --out DIR [--seed S] [--oracle-timeout SECONDS]
"""

import argparse
import json
import math
import os
import re
import sys
from collections.abc import Callable

from oracle import Oracle
from smtlib import is_representable, lit, prepare_output_folder

# The root of the repository, which holds the patterns and the payloads.
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# The white space and line terminators that String.prototype.trim() removes in JS.
JS_WHITESPACE = (
    "\t\n\v\f\r              "
    "    　﻿"
)


def make_lcg(seed: int) -> Callable[[], float]:
    """Makes the linear congruential generator of make_smt_random.js.

    Args:
        seed (int): The seed.

    Returns:
        Callable[[], float]: Function returning the next random number in [0, 1).
    """
    state = seed & 0xFFFFFFFF

    def rand() -> float:
        nonlocal state
        state = (1664525 * state + 1013904223) & 0xFFFFFFFF
        return state / 0x100000000

    return rand


def js_trim(s: str) -> str:
    """Removes the white space at both ends of a string, as String.prototype.trim() in JS.

    Args:
        s (str): The string.

    Returns:
        str: The trimmed string.
    """
    return s.strip(JS_WHITESPACE)


def load_payloads(path: str) -> list[str]:
    """Loads the payloads, the trimmed non-empty lines, as make_smt_random.js.

    Payloads with code points that SMT-LIB strings cannot contain are skipped.

    Args:
        path (str): File with one payload per line.

    Returns:
        list[str]: The payloads.
    """
    with open(path, encoding="utf-8", newline="") as f:
        lines = re.split(r"\r?\n", f.read())
    payloads = [js_trim(line) for line in lines]
    return [p for p in payloads if p and is_representable(p)]


def load_patterns(path: str) -> list[str]:
    """Loads the distinct trimmed patterns in the order of the file, as make_smt_random.js.

    Patterns with code points that SMT-LIB strings cannot contain are skipped.

    Args:
        path (str): File with one JSON object with a "pattern" per line.

    Returns:
        list[str]: The patterns.
    """
    with open(path, encoding="utf-8", newline="") as f:
        # The lines as node's readline splits them.
        lines = re.split(r"\r\n|\n|\r", f.read())

    patterns = []
    for line in lines:
        line = js_trim(line)
        if not line:
            continue
        try:
            entry = json.loads(line)
        except json.JSONDecodeError:
            print(f"JSON parse error: {line}", file=sys.stderr)
            continue
        pattern = entry.get("pattern") if isinstance(entry, dict) else None
        if isinstance(pattern, str) and js_trim(pattern):
            patterns.append(js_trim(pattern))
    return [p for p in dict.fromkeys(patterns) if is_representable(p)]


def make_formula(pattern: str, payload: str, status: bool) -> str:
    """Writes the formula with a membership of a constant x in a regex.

    Args:
        pattern (str): The regex pattern.
        payload (str): The constant.
        status (bool): The status of the formula, True for sat.

    Returns:
        str: The SMT-LIB script.
    """
    return "\n".join(
        [
            "(set-logic QF_S)",
            "(set-info :status %s)" % ("sat" if status else "unsat"),
            "(declare-const x String)",
            f"(assert (str.in_re x (re.from_ecma2020 {lit(pattern)})))",
            f"(assert (= x {lit(payload)}))",
            "(check-sat)",
            "",
        ]
    )


def main() -> None:
    """Generates the formulas into the output folder and prints the numbers of sat, unsat and skipped patterns."""

    # Parse the arguments.
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--seed", type=int, default=42, help="seed of the random generator (default 42)")
    parser.add_argument(
        "--oracle-timeout", type=float, default=10.0, help="timeout of one test in node in seconds (default 10)"
    )
    parser.add_argument(
        "--patterns",
        default=os.path.join(ROOT, "patterns-used-in-testbed.txt"),
        help='patterns, one JSON object with a "pattern" per line',
    )
    parser.add_argument("--payloads", default=os.path.join(ROOT, "xss-payloads.txt"), help="payloads, one per line")
    parser.add_argument("--out", required=True, help="folder for the formulas, its .smt2 files are deleted first")
    args = parser.parse_args()

    prepare_output_folder(args.out)
    payloads = load_payloads(args.payloads)
    patterns = load_patterns(args.patterns)
    if not payloads:
        sys.exit("No payloads.")
    oracle = Oracle("", args.oracle_timeout, full_match=True)
    rand = make_lcg(args.seed)

    counts = {"sat": 0, "unsat": 0, "skipped": 0}
    for pattern in patterns:
        # Payloads are drawn until a test gives a result, at most as many times as there are payloads.
        status = None
        for _ in range(len(payloads)):
            payload = payloads[math.floor(rand() * len(payloads))]
            status = oracle.evaluate({pattern: [payload]})[pattern, payload]
            if status is not None:
                break
        if status is None:
            print(f"No test in time, skipping: {pattern}", file=sys.stderr)
            counts["skipped"] += 1
            continue

        written = counts["sat"] + counts["unsat"]
        with open(os.path.join(args.out, f"regex_{written:04d}.smt2"), "w", encoding="ascii") as f:
            f.write(make_formula(pattern, payload, status))
        counts["sat" if status else "unsat"] += 1
        if (written + 1) % 1000 == 0:
            print(f"{written + 1} formulas written", file=sys.stderr)

    oracle.stop()
    print(f"Written: {counts['sat'] + counts['unsat']}")
    print(f"sat:     {counts['sat']}")
    print(f"unsat:   {counts['unsat']}")
    print(f"skipped: {counts['skipped']}")


if __name__ == "__main__":
    main()
