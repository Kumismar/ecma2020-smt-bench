#!/usr/bin/env python3
"""Generate SMT-LIB benchmarks with ECMAScript regexes in random mixes of string constraints and in language operations.

Every formula uses the regex patterns and XSS payloads of ecma2020-smt-bench (https://github.com/Kumismar/ecma2020-smt-bench).
There are four families of formulas:

  - random_mix: (negated) memberships in ECMAScript regexes, mixed with random constraints of concatenation, str.substr, str.replace, prefixes, suffixes, lengths, etc. in clauses.
  - lang_ops: (negated) membership of a string in a regex built by language operations (re.union, re.inter, re.diff, re.comp) from ECMAScript regexes.
  - lang_inclusion: inclusion of the language of one regex in the language of another.
  - lang_equality: equality of the languages of two regexes.

The status of every formula is known during its construction:

  - In random_mix and lang_ops, every string variable can take only finitely many values given by the formula itself (a disjunction of constants, or a function of such variables), so the status is computed by enumerating all the combinations.
  - In lang_inclusion and lang_equality, the relation of the languages is known by construction (see DERIVED_PATTERNS and the identities of the language operations), or a witness string shows that the inclusion or equality does not hold.

The formulas are generated in one of two modes, which differ only in the flags of the regexes:

  - In the BMP mode (default), the regexes have no flags, so they read a string as UTF-16 code units, as in JS.
  - In the Unicode mode (--unicode), the regexes have the u flag, so they read a string as code points.

In both modes, the strings are sequences of SMT-LIB characters (code points).
Some payloads get supplementary code points, which the two modes read differently.

A membership is evaluated by RegExp.test() in node (js_oracle.js) with the flags of the mode, as in ecma2020-smt-bench, so the formulas are meant to be solved with the engine semantics (in z3-noodler, smt.str.ecma_engine_semantics=true, which run.py passes on the command line).
The language of an ECMAScript regex is then the set of the strings in which RegExp.test() finds a match.
The formulas contain no options of a solver, so that any solver can read them.

usage: make_smt_mixed.py --out DIR [--unicode] [--count N] [--seed S] [--z3 BINARY]
"""

import argparse
import itertools
import json
import os
import random
import subprocess
import sys
from collections.abc import Callable

from oracle import Oracle
from smtlib import (
    is_representable,
    lit,
    make_char_at,
    make_clause,
    make_concat,
    make_contains,
    make_ecma,
    make_ecma_regex,
    make_indexof,
    make_length,
    make_max_length,
    make_min_length,
    make_or,
    make_prefixof,
    make_replace,
    make_replace_term,
    make_substr,
    make_suffixof,
    negate_if_negative,
    prepare_output_folder,
)

# The root of the repository, which holds the patterns and the payloads.
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Number of formulas of every family, relative to each other.
FAMILY_WEIGHTS = {
    "random_mix": 40,
    "lang_ops": 10,
    "lang_inclusion": 25,
    "lang_equality": 25,
}
# Descriptions of the families, written to the first line of every formula.
FAMILY_DESCRIPTIONS = {
    "random_mix": "x, z from disjunctions of constants, y = x ++ z, clauses of 1 to 3 random (negated) constraints of x, y, z: "
    "memberships, affixes, contains, lengths, str.at, str.indexof, str.substr, str.replace",
    "lang_ops": "x from a disjunction of constants, (negated) membership of x in a regex built by language operations "
    "from ECMAScript regexes",
    "lang_inclusion": "is the language of a regex A included in the language of a regex B, both built from ECMAScript "
    "regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B",
    "lang_equality": "are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, "
    "its negation, or a string x in exactly one of them",
}
# Share of patterns with non-regular features (anchors, word boundaries, lookarounds, backreferences).
# Only these lead to fresh variables in the generated ECMA constraints, the rest is a control group of plain memberships.
NON_REGULAR_SHARE = 0.85
# Share of negated memberships in random_mix.
NEGATIVE_PROBABILITY = 0.7
# Payloads used to build the strings, longer payloads would only make the formulas bigger.
MAX_PAYLOAD_LEN = 150
# Share of payloads with one or two supplementary code points inserted, which BMP and Unicode patterns read differently.
SUPPLEMENTARY_SHARE = 0.1
# Supplementary code points to insert: two emoji, a mathematical letter, a Gothic letter and a CJK ideograph.
SUPPLEMENTARY_CODE_POINTS = [chr(0x1F600), chr(0x1F4A9), chr(0x1D400), chr(0x10348), chr(0x20000)]
# Attempts to find a formula whose status is the less frequent one in its family.
BALANCE_ATTEMPTS = 6
# Types of the constraints of the random_mix family.
CONSTRAINT_TYPES = ["membership", "prefixof", "suffixof", "contains", "length", "char_at", "indexof", "substr", "replace"]
# Number of constraints of a random_mix formula, besides the constants of its variables and y = x ++ z.
MIN_RANDOM_CONSTRAINTS = 8
MAX_RANDOM_CONSTRAINTS = 15
# Most constraints of one type in a random_mix formula.
MAX_CONSTRAINTS_PER_TYPE = 3
# Share of the random_mix constraints whose values come from an unrelated string instead of a value of their variable.
UNRELATED_SOURCE_SHARE = 0.2
# Replacement strings of str.replace in random_mix.
REPLACEMENTS = ["", "x", "<b>", "javascript:", '"', " ", "alert(1)"]
# Share of the regexes of lang_ops with a classical SMT-LIB regex besides the ECMAScript regexes.
CLASSICAL_SHARE = 0.4
# Characters with a special meaning in ECMAScript patterns, escaped in a pattern that matches a literal string.
JS_SYNTAX_CHARACTERS = set("^$\\.*+?()[]{}|/")
# Patterns derived from a pattern P and a pattern C matching a literal string, and the relation of their languages to the language of P.
# "subset": a string in which the derived pattern matches is also one in which P matches, "superset": the other way round, "equal": both.
# All the relations follow from the semantics of RegExp.test(): a match of the derived pattern contains a match of P at the same position of the same string, or vice versa.
# P keeps the numbers of its capturing groups and C has none, so the backreferences of P keep their meaning.
DERIVED_PATTERNS = {
    "followed_by_literal": ("(?:{p}){c}", "subset"),
    "preceded_by_literal": ("{c}(?:{p})", "subset"),
    "literal_after_lookahead": ("(?={p}){c}", "subset"),
    "full_match": ("^(?:{p})$", "subset"),
    "or_literal": ("(?:{p})|{c}", "superset"),
    "literal_or": ("{c}|(?:{p})", "superset"),
    "repeated": ("(?:{p})+", "equal"),
    "any_prefix": (".*(?:{p})", "equal"),
    "any_suffix": ("(?:{p}).*", "equal"),
    "optional_literal": ("(?:{p})(?:{c})?", "equal"),
}
# Payloads on which the regexes of an inclusion or equality are evaluated, to find a witness or to check a known relation.
WITNESS_CANDIDATES = 20


def has_non_regular_features(pattern: str) -> bool:
    r"""Checks whether the pattern contains an anchor, word boundary, lookaround or backreference outside a class.

    Without the u flag, \1 to \9 (with all the digits that follow) is a backreference only if the pattern has at least that many capturing groups, otherwise it is an octal escape or the digit itself.
    Likewise, \k is a backreference only if the pattern has a named group, otherwise it is the letter k.
    With the u flag, such escapes are syntax errors, so the oracle rejects these patterns in the Unicode mode.

    Args:
        pattern (str): The regex pattern.

    Returns:
        bool: True if the pattern contains such a feature; False otherwise.
    """
    groups = 0
    named_groups = False
    # Numbers of the escapes \1 to \9 (with the digits that follow), and whether there is \k.
    # Whether they are backreferences depends on the groups, which are all known only at the end of the pattern.
    decimal_escapes = []
    has_k_escape = False
    i = 0
    in_class = False
    while i < len(pattern):
        c = pattern[i]

        # An escape: a word boundary (\b, \B) or a possible backreference (\1 to \9, \k<name>).
        # The escaped character is skipped, together with the digits that follow \1 to \9.
        if c == "\\":
            following = pattern[i + 1 : i + 2]
            end = i + 2
            if not in_class and following:
                if following in "bB":
                    return True
                if following == "k":
                    has_k_escape = True
                elif following in "123456789":
                    while end < len(pattern) and pattern[end] in "0123456789":
                        end += 1
                    decimal_escapes.append(int(pattern[i + 1 : end]))
            i = end
            continue

        # Inside a class, only its end matters.
        if in_class:
            if c == "]":
                in_class = False
        elif c == "[":
            in_class = True

        # Anchors and lookarounds.
        elif c in "^$":  # noqa: SIM114
            return True
        elif c == "(" and pattern.startswith(("?=", "?!", "?<=", "?<!"), i + 1):
            return True

        # Capturing groups, the named ones start with "(?<" (the lookbehinds are handled above).
        elif c == "(" and (not pattern.startswith("?", i + 1) or pattern.startswith("?<", i + 1)):
            groups += 1
            named_groups = named_groups or pattern.startswith("?<", i + 1)
        i += 1

    # The possible backreferences that really are backreferences.
    return any(n <= groups for n in decimal_escapes) or (has_k_escape and named_groups)


def literal_pattern(s: str) -> str:
    """Makes an ECMAScript pattern that matches a string literally.

    Args:
        s (str): The string.

    Returns:
        str: The pattern, the string with its syntax characters escaped.
    """
    return "".join("\\" + c if c in JS_SYNTAX_CHARACTERS else c for c in s)


def z3_supports(z3: str, pattern: str, flags: str, timeout: float) -> bool:
    """Checks that z3 supports the pattern, i.e., it answers a plain membership of a free string or runs out of time.

    A timeout counts as support, since the benchmarks should keep the patterns that are hard for the solver.

    Args:
        z3 (str): The z3 executable.
        pattern (str): The regex pattern.
        flags (str): Flags of the regex, see make_ecma_regex().
        timeout (float): Timeout in seconds.

    Returns:
        bool: True if z3 answers sat or unsat without an error, or times out; False otherwise.
    """
    formula = "\n".join(
        ["(set-logic QF_S)", "(declare-const x String)", f"(assert {make_ecma('x', pattern, flags)})", "(check-sat)"]
    )
    # The engine semantics is passed on the command line, as run.py does.
    command = [z3, "smt.str.ecma_engine_semantics=true", "-in"]
    try:
        proc = subprocess.run(
            command, check=False, input=formula, capture_output=True, text=True, errors="replace", timeout=timeout
        )
    except subprocess.TimeoutExpired:
        return True
    lines = proc.stdout.splitlines()
    return ("sat" in lines or "unsat" in lines) and not any(line.startswith("(error") for line in lines)


class LangRegex:
    """A regex built by language operations from ECMAScript patterns and classical SMT-LIB regexes.

    A leaf is an ECMAScript pattern ("ecma"), or a classical regex ("classical") with a function that checks its strings.
    Every other node is an operation on its children: the complement ("comp") of one child, or the union, intersection or difference ("union", "inter", "diff") of two children.
    """

    def __init__(
        self,
        operation: str,
        *children: "LangRegex",
        pattern: str = "",
        term: str = "",
        check: Callable[[str], bool] | None = None,
    ) -> None:
        """Creates a node of the regex.

        Args:
            operation (str): "ecma", "classical", "comp", "union", "inter" or "diff".
            *children (LangRegex): The operands of the operation, none for a leaf.
            pattern (str): The pattern of an "ecma" leaf.
            term (str): The SMT-LIB regex of a "classical" leaf.
            check (Callable[[str], bool] | None): Whether a string is in the language of a "classical" leaf.
        """
        self.operation = operation
        self.children = children
        self.pattern = pattern
        self.term = term
        self.check = check

    @staticmethod
    def ecma(pattern: str) -> "LangRegex":
        """Makes an ECMAScript leaf.

        Args:
            pattern (str): The pattern.

        Returns:
            LangRegex: The leaf.
        """
        return LangRegex("ecma", pattern=pattern)

    def to_smt(self, flags: str) -> str:
        """Writes the regex in SMT-LIB.

        Args:
            flags (str): Flags of the ECMAScript regexes, see make_ecma_regex().

        Returns:
            str: The SMT-LIB regex.
        """
        if self.operation == "ecma":
            return make_ecma_regex(self.pattern, flags)
        if self.operation == "classical":
            return self.term
        return f"(re.{self.operation} {' '.join(child.to_smt(flags) for child in self.children)})"

    def matches(self, results: dict[tuple[str, str], bool], s: str) -> bool:
        """Checks whether a string is in the language of the regex.

        Args:
            results (dict[tuple[str, str], bool]): Results of RegExp.test() of the ECMAScript leaves on the string, {(pattern, string): bool}.
            s (str): The string.

        Returns:
            bool: True if the string is in the language; False otherwise.
        """
        if self.operation == "ecma":
            return results[self.pattern, s]
        if self.operation == "classical":
            return self.check(s)
        values = [child.matches(results, s) for child in self.children]
        if self.operation == "comp":
            return not values[0]
        if self.operation == "union":
            return values[0] or values[1]
        if self.operation == "inter":
            return values[0] and values[1]
        return values[0] and not values[1]

    def patterns(self) -> list[str]:
        """Lists the patterns of the ECMAScript leaves.

        Returns:
            list[str]: The patterns.
        """
        if self.operation == "ecma":
            return [self.pattern]
        return [pattern for child in self.children for pattern in child.patterns()]

    def has_operation(self, operations: set[str]) -> bool:
        """Checks whether the regex contains one of the operations.

        Args:
            operations (set[str]): The operations.

        Returns:
            bool: True if some node has one of the operations; False otherwise.
        """
        return self.operation in operations or any(child.has_operation(operations) for child in self.children)


class Candidate:
    """A generated formula, its declarations and assertions."""

    def __init__(self, family: str, description: str, flags: str) -> None:
        """Creates an empty formula.

        Args:
            family (str): Name of the family of the formula.
            description (str): Description of the family, written to the formula as a comment.
            flags (str): Flags of the regexes, see make_ecma_regex().
        """
        self.family = family
        self.description = description
        self.flags = flags
        # How the formula was built, written to the formula as a second comment if it is not empty.
        self.details = ""
        self.declarations: list[str] = []
        self.assertions: list[str] = []

    def declare(self, *names: str) -> None:
        """Declares string variables.

        Args:
            *names (str): Names of the variables.
        """
        self.declarations.extend(f"(declare-const {name} String)" for name in names)

    def text(self, status: bool) -> str:
        """Writes the formula in SMT-LIB.

        Args:
            status (bool): The status of the formula, True for sat.

        Returns:
            str: The SMT-LIB script.
        """
        mode = "Unicode" if self.flags else "BMP"
        return "\n".join(
            [f"; {self.family}, {mode} mode: {self.description}"]
            + ([f"; {self.details}"] if self.details else [])
            + ["(set-logic QF_SLIA)", "(set-info :status %s)" % ("sat" if status else "unsat")]
            + self.declarations
            + [f"(assert {a})" for a in self.assertions]
            + ["(check-sat)", ""]
        )


class Generator:
    """Generates random formulas of all the families from the patterns and payloads.

    Every family method builds one formula and computes its status, its docstring shows an example of the BMP mode.
    In the Unicode mode, the memberships use ((_ re.from_regex ecma2020 u) "...") instead of ((_ re.from_regex ecma2020) "...").
    """

    def __init__(self, args: argparse.Namespace) -> None:
        """Loads the payloads and the patterns.

        Args:
            args (argparse.Namespace): The parsed command line arguments.
        """
        # The only source of randomness, so that the seed determines all the formulas.
        self.rng = random.Random(args.seed)
        # Flags of the regexes, "u" in the Unicode mode and none in the BMP mode.
        self.flags = "u" if args.unicode else ""
        self.oracle = Oracle(self.flags, args.oracle_timeout)
        self.z3 = args.z3
        self.z3_timeout = args.z3_timeout
        # Both calls use the random generator, so their order matters.
        self.payloads = self.insert_supplementary(self.load_payloads(args.payloads))
        self.non_regular, self.regular = self.load_patterns(args.patterns)
        # Whether a pattern can be used, i.e., z3 supports it and node evaluates it in time, {pattern: bool}.
        # Besides the loaded patterns, it holds the patterns derived from them.
        self.usable: dict[str, bool] = {}
        # Known relations of languages that the witness candidates refuted, which would be a bug of DERIVED_PATTERNS.
        self.refuted_constructions = 0
        # Method generating a formula and its status for every family in FAMILY_WEIGHTS.
        self.family_generators = {
            "random_mix": self.random_mix,
            "lang_ops": self.lang_ops,
            "lang_inclusion": self.lang_inclusion,
            "lang_equality": self.lang_equality,
        }

    @staticmethod
    def load_payloads(path: str) -> list[str]:
        """Loads the payloads that are neither too short nor too long.

        Args:
            path (str): File with one payload per line.

        Returns:
            list[str]: The payloads.
        """
        with open(path, encoding="utf-8") as f:
            payloads = [line.strip() for line in f]
        # Only the payloads whose characters SMT-LIB strings can contain.
        return [p for p in payloads if 4 <= len(p) <= MAX_PAYLOAD_LEN and is_representable(p)]

    def insert_supplementary(self, payloads: list[str]) -> list[str]:
        """Inserts one or two supplementary code points at random positions into SUPPLEMENTARY_SHARE of the payloads.

        Args:
            payloads (list[str]): The payloads.

        Returns:
            list[str]: The payloads, some of them with the inserted code points.
        """
        result = []
        for payload in payloads:
            # A payload gets the code points with probability SUPPLEMENTARY_SHARE.
            if self.rng.random() < SUPPLEMENTARY_SHARE:
                for _ in range(self.rng.randint(1, 2)):
                    position = self.rng.randint(0, len(payload))
                    payload = payload[:position] + self.rng.choice(SUPPLEMENTARY_CODE_POINTS) + payload[position:]
            result.append(payload)
        return result

    def load_patterns(self, path: str) -> tuple[list[str], list[str]]:
        """Loads the distinct patterns and splits them by has_non_regular_features().

        Args:
            path (str): File with one JSON object with a "pattern" per line.

        Returns:
            tuple[list[str], list[str]]: The shuffled patterns with and without non-regular features.
        """
        patterns = []
        with open(path, encoding="utf-8") as f:
            for line in f:
                # Lines that are not JSON (including the empty ones) are skipped.
                try:
                    patterns.append((json.loads(line).get("pattern") or "").strip())
                except json.JSONDecodeError:
                    pass

        # The non-empty patterns without duplicates, in the order of the file, so the shuffles depend only on the seed.
        # Patterns with code points that SMT-LIB strings cannot contain are skipped.
        patterns = [p for p in dict.fromkeys(patterns) if p and is_representable(p)]

        # The two pools that pattern() picks from.
        non_regular = [p for p in patterns if has_non_regular_features(p)]
        regular = [p for p in patterns if not has_non_regular_features(p)]
        self.rng.shuffle(non_regular)
        self.rng.shuffle(regular)
        return non_regular, regular

    # ---------------------------------------------------------------- random pieces

    def get_random_payload(self) -> str:
        """Picks a random string payload.

        Returns:
            str: The payload.
        """
        return self.rng.choice(self.payloads)

    def get_random_split_index(self, s: str) -> int:
        """Picks a random position that splits a string into two non-empty parts.

        Args:
            s (str): The string, at least 2 characters long.

        Returns:
            int: The position.
        """
        return self.rng.randint(1, len(s) - 1)

    def get_random_substring_from(self, s: str, min_len: int = 2, max_len: int = 10) -> str:
        """Picks a random substring.

        Args:
            s (str): The string, at least min_len characters long.
            min_len (int): Minimal length of the substring.
            max_len (int): Maximal length of the substring.

        Returns:
            str: The substring.
        """
        length = self.rng.randint(min_len, min(max_len, len(s)))
        start = self.rng.randint(0, len(s) - length)
        return s[start : start + length]

    def random_suffix_of(self, s: str) -> str:
        """Picks a random non-empty proper suffix.

        Args:
            s (str): The string, at least 2 characters long.

        Returns:
            str: The suffix.
        """
        return s[self.get_random_split_index(s) :]

    def is_usable(self, pattern: str) -> bool:
        """Checks whether a pattern can be used, z3 checks it when it is seen for the first time.

        Args:
            pattern (str): The pattern.

        Returns:
            bool: True if the pattern can be used; False otherwise.
        """
        if pattern not in self.usable:
            self.usable[pattern] = self.z3 is None or z3_supports(self.z3, pattern, self.flags, self.z3_timeout)
        return self.usable[pattern]

    def get_random_pattern(self) -> str:
        """Picks a random usable pattern, a non-regular one with probability NON_REGULAR_SHARE.

        Returns:
            str: The pattern.
        """
        while True:
            # The pool is picked first, so that its share does not depend on its size.
            pool = self.non_regular if self.rng.random() < NON_REGULAR_SHARE else self.regular
            pattern = self.rng.choice(pool)
            if self.is_usable(pattern):
                return pattern

            # Without any usable pattern, the loop would never end.
            if not any(self.usable.get(p, True) for p in itertools.chain(self.non_regular, self.regular)):
                sys.exit("No usable pattern: z3 supports none of them, or node cannot evaluate them.")

    def get_distinct_patterns(self, count: int) -> list[str]:
        """Picks different random usable patterns.

        Args:
            count (int): Number of the patterns.

        Returns:
            list[str]: The patterns.
        """
        patterns: list[str] = []
        while len(patterns) < count:
            pattern = self.get_random_pattern()
            if pattern not in patterns:
                patterns.append(pattern)
        return patterns

    def get_random_polarity(self, negative_probability: float = NEGATIVE_PROBABILITY) -> bool:
        """Picks a random polarity of a membership or another constraint.

        Args:
            negative_probability (float): Probability of the negative polarity.

        Returns:
            bool: True for the positive polarity, False for the negative one.
        """
        return self.rng.random() >= negative_probability

    def get_unrelated_value(self, var: str) -> str:
        """Picks a random string like the constants of a variable of the random_mix family.

        Args:
            var (str): The variable, "x" (a payload), "z" (a suffix of a payload) or "y" (a payload and a suffix).

        Returns:
            str: The string.
        """
        if var == "x":
            return self.get_random_payload()
        if var == "z":
            return self.random_suffix_of(self.get_random_payload())
        return self.get_random_payload() + self.random_suffix_of(self.get_random_payload())

    def create_empty_formula(self, family: str) -> Candidate:
        """Creates an empty formula of a family in the mode of the generator.

        Args:
            family (str): Name of the family.

        Returns:
            Candidate: The formula.
        """
        return Candidate(family, FAMILY_DESCRIPTIONS[family], self.flags)

    def evaluate(self, memberships: dict[str, list[str]]) -> dict[tuple[str, str], bool] | None:
        """Evaluates the memberships that a formula needs.

        A pattern whose test times out (or that is not a valid RegExp) cannot be used any more.

        Args:
            memberships (dict[str, list[str]]): The memberships to evaluate, {pattern: strings}.

        Returns:
            dict[tuple[str, str], bool] | None: The results of the memberships, {(pattern, string): bool}; None if a test timed out or a pattern is not a valid RegExp.
        """
        results = self.oracle.evaluate(memberships)
        failed = {pattern for (pattern, _), result in results.items() if result is None}
        if failed:
            self.usable.update(dict.fromkeys(failed, False))
            return None
        return results

    # ---------------------------------------------------------------- random_mix

    def make_random_constraint(self, constraint_type: str, var: str, source: str) -> tuple[str, Callable[[str], bool]]:
        """Makes a constraint of a variable with the values cut from a source string, so that the source satisfies it.

        Args:
            constraint_type (str): A type of CONSTRAINT_TYPES other than "membership".
            var (str): The variable.
            source (str): The source string, at least 1 character long.

        Returns:
            tuple[str, Callable[[str], bool]]: The SMT-LIB constraint and its check of a value of the variable.
        """
        if constraint_type == "prefixof":
            prefix = source[: self.rng.randint(1, min(10, len(source)))]
            return make_prefixof(var, prefix), lambda value: value.startswith(prefix)
        if constraint_type == "suffixof":
            suffix = source[-self.rng.randint(1, min(10, len(source))) :]
            return make_suffixof(var, suffix), lambda value: value.endswith(suffix)
        if constraint_type == "contains":
            part = self.get_random_substring_from(source, min_len=min(2, len(source)))
            return make_contains(var, part), lambda value: part in value

        # The length of the source, or a bound up to 10 characters away from it.
        if constraint_type == "length":
            operator = self.rng.choice(("=", "<=", ">="))
            if operator == "=":
                length = len(source)
                return make_length(var, length), lambda value: len(value) == length
            if operator == "<=":
                max_length = len(source) + self.rng.randint(0, 10)
                return make_max_length(var, max_length), lambda value: len(value) <= max_length
            # A lower bound of 0 would hold for every string.
            min_length = max(1, len(source) - self.rng.randint(0, 10))
            return make_min_length(var, min_length), lambda value: len(value) >= min_length

        # (str.at s i) is empty if i is out of s, just like s[i : i + 1].
        if constraint_type == "char_at":
            index = self.rng.randrange(len(source))
            char = source[index]
            return make_char_at(var, index, char), lambda value: value[index : index + 1] == char

        # (str.indexof s t 0) is the first position of a non-empty t in s or -1, just like s.find(t).
        if constraint_type == "indexof":
            part = self.get_random_substring_from(source, min_len=1, max_len=5)
            index = source.find(part)
            return make_indexof(var, part, index), lambda value: value.find(part) == index

        # (str.substr s i n) with i >= 0 and n > 0 is s[i : i + n], empty if i is out of s.
        if constraint_type == "substr":
            start, length = self.rng.randrange(len(source)), self.rng.randint(1, 10)
            part = source[start : start + length]
            return make_substr(lit(part), var, start, length), lambda value: value[start : start + length] == part

        # str.replace replaces the first occurrence of a non-empty string, just like str.replace(old, new, 1).
        # The result is either equal to the replaced source, or it contains a part of it around the replacement.
        if constraint_type == "replace":
            old, new = self.get_random_substring_from(source, min_len=1, max_len=5), self.rng.choice(REPLACEMENTS)
            replaced = source.replace(old, new, 1)
            # The part reaches 1 to 5 characters around the replacement, so it is empty only if the whole result is.
            if replaced and self.rng.random() < 0.5:
                position = source.find(old)
                part = replaced[max(0, position - self.rng.randint(1, 5)) : position + len(new) + self.rng.randint(1, 5)]
                return (
                    make_contains(make_replace_term(var, old, new), part),
                    lambda value: part in value.replace(old, new, 1),
                )
            return make_replace(lit(replaced), var, old, new), lambda value: value.replace(old, new, 1) == replaced

        raise ValueError(f"unknown constraint type {constraint_type}")

    def random_mix(self) -> tuple[Candidate, bool | None]:
        r"""Generates a formula with x and z from disjunctions of constants, y = x ++ z, and clauses of random constraints.

        There are MIN_RANDOM_CONSTRAINTS to MAX_RANDOM_CONSTRAINTS constraints of x, y and z, the first one is a membership.
        Every type of CONSTRAINT_TYPES occurs at most MAX_CONSTRAINTS_PER_TYPE times, the memberships have different patterns.
        No constraint occurs twice, not even with the other polarity.
        The values of every other constraint are cut from a value of its variable, or from an unrelated string with probability UNRELATED_SOURCE_SHARE.
        The constraints are shuffled and split into clauses of 1 to 3 constraints.

        Example:
            (declare-const x String)
            (declare-const y String)
            (declare-const z String)
            (assert (or (= x "<main onmouseup=""alert(1)"">test</main>")
                        (= x "<nav draggable=""true"" ondragend=""alert(1)"">test</nav>")))
            (assert (or (= z "ert`1`") (= z "applet onerror=""javascript:javascript:alert(1)""></applet onerror>")
                        (= z "ript:alert(\u{2018}XSS\u{2019})\u{201d}>")))
            (assert (= y (str.++ x z)))
            (assert (or (not (str.suffixof "SS\u{2019})\u{201d}>" z))
                        (not (str.in_re x ((_ re.from_regex ecma2020) "[a-zA-Z][a-zA-Z0-9\s]+")))
                        (not (= (str.at y 5) "d"))))
            (assert (or (= (str.at x 1) "m") (= "t`1" (str.substr z 2 3)) (not (>= (str.len x) 28))))
            (assert (or (not (str.suffixof "av>" x)) (not (str.suffixof "or>" y))
                        (str.contains (str.replace y "ragg" "") " da")))
            (assert (not (= (str.indexof z "et" 0) 4)))
            (assert (not (= (str.indexof y "va" 0) 56)))
            (assert (or (str.prefixof "<ma" y) (= (str.at x 13) "u")))
            (assert (or (str.contains y "(1") (not (str.contains y "jav"))))

        Returns:
            tuple[Candidate, bool | None]: The formula and its status, True for sat; None if a regex cannot be evaluated.
        """
        formula = self.create_empty_formula("random_mix")

        # x is one of two or three payloads, z one of two or three suffixes of payloads, y their concatenation.
        x_candidates = [self.get_random_payload() for _ in range(self.rng.randint(2, 3))]
        z_candidates = [self.random_suffix_of(self.get_random_payload()) for _ in range(self.rng.randint(2, 3))]
        candidates = {"x": x_candidates, "y": [x + z for x in x_candidates for z in z_candidates], "z": z_candidates}

        # The variable of every membership, {pattern: var}.
        membership_vars: dict[str, str] = {}
        # Results of the memberships, {(pattern, value): bool}, known only after all the constraints are picked.
        membership_results: dict[tuple[str, str], bool] = {}
        # The picked constraints, (var, constraint, check of a value of var, polarity).
        literals: list[tuple[str, str, Callable[[str], bool], bool]] = []
        type_counts = dict.fromkeys(CONSTRAINT_TYPES, 0)

        constraint_count = self.rng.randint(MIN_RANDOM_CONSTRAINTS, MAX_RANDOM_CONSTRAINTS)
        while len(literals) < constraint_count:
            # The first constraint is a membership, the others get a type that is not used up yet.
            if literals:
                constraint_type = self.rng.choice(
                    [t for t in CONSTRAINT_TYPES if type_counts[t] < MAX_CONSTRAINTS_PER_TYPE]
                )
            else:
                constraint_type = "membership"
            var = self.rng.choice(("x", "y", "z"))

            if constraint_type == "membership":
                pattern = self.get_random_pattern()
                while pattern in membership_vars:
                    pattern = self.get_random_pattern()
                membership_vars[pattern] = var
                literals.append(
                    (
                        var,
                        make_ecma(var, pattern, self.flags),
                        lambda value, pattern=pattern: membership_results[pattern, value],
                        self.get_random_polarity(),
                    )
                )
            else:
                is_unrelated = self.rng.random() < UNRELATED_SOURCE_SHARE
                source = self.get_unrelated_value(var) if is_unrelated else self.rng.choice(candidates[var])
                constraint, check = self.make_random_constraint(constraint_type, var, source)
                # A constraint that is already there (with any polarity) is thrown away, and another one is picked.
                if any(constraint == other for _, other, _, _ in literals):
                    continue
                literals.append((var, constraint, check, self.get_random_polarity(0.5)))
            type_counts[constraint_type] += 1

        # The constraints are shuffled and split into clauses of 1 to 3 constraints.
        self.rng.shuffle(literals)
        clauses = []
        while literals:
            size = self.rng.randint(1, 3)
            clauses.append(literals[:size])
            literals = literals[size:]

        formula.declare("x", "y", "z")
        formula.assertions += [make_or("x", x_candidates), make_or("z", z_candidates), make_concat("y", "x", "z")]
        for clause in clauses:
            disjuncts = [negate_if_negative(constraint, positive) for _, constraint, _, positive in clause]
            formula.assertions.append(disjuncts[0] if len(disjuncts) == 1 else make_clause(*disjuncts))

        # Every membership is evaluated on all the values of its variable.
        results = self.evaluate({pattern: candidates[var] for pattern, var in membership_vars.items()})
        if results is None:
            return formula, None
        membership_results.update(results)

        # The formula is sat iff some values of x and z satisfy all the clauses.
        for x in x_candidates:
            for z in z_candidates:
                values = {"x": x, "y": x + z, "z": z}
                if all(any(check(values[var]) == positive for var, _, check, positive in clause) for clause in clauses):
                    return formula, True
        return formula, False

    # ---------------------------------------------------------------- language operations

    def get_classical_regex(self, sample: str) -> LangRegex:
        """Makes a classical regex of a prefix, a suffix, a substring or a length range of a sample string.

        Args:
            sample (str): The sample string, at least 2 characters long.

        Returns:
            LangRegex: The classical regex.
        """
        kind = self.rng.choice(["prefix", "suffix", "contains", "length"])
        if kind == "prefix":
            prefix = sample[: self.rng.randint(1, min(6, len(sample)))]
            return LangRegex(
                "classical", term=f"(re.++ (str.to_re {lit(prefix)}) re.all)", check=lambda s: s.startswith(prefix)
            )
        if kind == "suffix":
            suffix = sample[-self.rng.randint(1, min(6, len(sample))) :]
            return LangRegex(
                "classical", term=f"(re.++ re.all (str.to_re {lit(suffix)}))", check=lambda s: s.endswith(suffix)
            )
        if kind == "contains":
            part = self.get_random_substring_from(sample, min_len=1, max_len=6)
            return LangRegex(
                "classical", term=f"(re.++ re.all (str.to_re {lit(part)}) re.all)", check=lambda s: part in s
            )
        low = max(0, len(sample) - self.rng.randint(0, 10))
        high = len(sample) + self.rng.randint(0, 10)
        return LangRegex(
            "classical", term=f"((_ re.loop {low} {high}) re.allchar)", check=lambda s: low <= len(s) <= high
        )

    def get_random_lang_regex(self, samples: list[str]) -> LangRegex:
        """Builds a regex by language operations from two or three ECMAScript regexes and maybe a classical regex.

        The classical regex is made from one of the samples with probability CLASSICAL_SHARE.
        The regex has at least one operation other than re.union.

        Args:
            samples (list[str]): Strings for the classical regex.

        Returns:
            LangRegex: The regex.
        """
        nodes = [LangRegex.ecma(pattern) for pattern in self.get_distinct_patterns(self.rng.choice([2, 2, 3]))]
        if self.rng.random() < CLASSICAL_SHARE:
            nodes.append(self.get_classical_regex(self.rng.choice(samples)))
        self.rng.shuffle(nodes)

        # Two neighbouring nodes are joined by a random operation, the right one is complemented with probability 0.25.
        while len(nodes) > 1:
            i = self.rng.randrange(len(nodes) - 1)
            right = LangRegex("comp", nodes[i + 1]) if self.rng.random() < 0.25 else nodes[i + 1]
            nodes[i : i + 2] = [LangRegex(self.rng.choice(["union", "inter", "inter", "diff"]), nodes[i], right)]

        regex = nodes[0]
        if self.rng.random() < 0.15 or not regex.has_operation({"inter", "diff", "comp"}):
            regex = LangRegex("comp", regex)
        return regex

    def derive_pattern(self, pattern: str, relations: set[str], source: str) -> tuple[str, str, str]:
        """Derives a pattern from a pattern P by a random kind of DERIVED_PATTERNS with one of the relations.

        Args:
            pattern (str): The pattern P.
            relations (set[str]): The allowed relations of the derived pattern to P, "subset", "superset" or "equal".
            source (str): String that the literal pattern C is cut from, at least 2 characters long.

        Returns:
            tuple[str, str, str]: The kind, the derived pattern and its relation to P.
        """
        kind = self.rng.choice([kind for kind, (_, relation) in DERIVED_PATTERNS.items() if relation in relations])
        template, relation = DERIVED_PATTERNS[kind]
        literal = literal_pattern(self.get_random_substring_from(source, min_len=2, max_len=6))
        return kind, template.format(p=pattern, c=literal), relation

    def evaluate_pair(
        self, first: LangRegex, second: LangRegex, candidates: list[str]
    ) -> tuple[list[bool], list[bool]] | None:
        """Evaluates two regexes on the witness candidates.

        Args:
            first (LangRegex): The first regex.
            second (LangRegex): The second regex.
            candidates (list[str]): The witness candidates.

        Returns:
            tuple[list[bool], list[bool]] | None: Whether every candidate is in the first and in the second regex; None if a pattern cannot be used.
        """
        patterns = first.patterns() + second.patterns()
        # The derived patterns are checked by z3 as well, the others are checked already.
        if not all(self.is_usable(pattern) for pattern in patterns):
            return None
        results = self.evaluate({pattern: candidates for pattern in patterns})
        if results is None:
            return None
        return [first.matches(results, c) for c in candidates], [second.matches(results, c) for c in candidates]

    def report_refuted(self, family: str, kind: str, first: LangRegex, second: LangRegex) -> None:
        """Reports a known relation of languages that a witness candidate refuted, the formula is thrown away.

        Args:
            family (str): The family of the formula.
            kind (str): The construction of the relation.
            first (LangRegex): The first regex.
            second (LangRegex): The second regex.
        """
        self.refuted_constructions += 1
        print(
            f"{family}: the candidates refute the construction {kind} of {first.to_smt(self.flags)} "
            f"and {second.to_smt(self.flags)}",
            file=sys.stderr,
        )

    def lang_ops(self) -> tuple[Candidate, bool | None]:
        r"""Generates a formula with x from a disjunction of constants, and a membership of x in a regex built by language operations.

        The regex is built from two or three ECMAScript regexes, and maybe a classical regex of one of the constants, see get_random_lang_regex().
        The membership is negated with probability 0.3.

        Example:
            (declare-const x String)
            (assert (or (= x "<strike oncut=""alert(1)"" contenteditable>test</strike>")
                        (= x "<button onmouseout=""alert(1)"">test</button>")
                        (= x "<style id=x tabindex=1 onfocus=alert(1)></style>")))
            (assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^.{0,8}$")
                                           (re.comp ((_ re.from_regex ecma2020) "^[0-9\.\-]{8,11}$")))))

        Returns:
            tuple[Candidate, bool | None]: The formula and its status, True for sat; None if a regex cannot be evaluated.
        """
        formula = self.create_empty_formula("lang_ops")
        values = [self.get_random_payload() for _ in range(3)]
        regex, positive = self.get_random_lang_regex(values), self.get_random_polarity(0.3)
        formula.declare("x")
        formula.assertions += [
            make_or("x", values),
            negate_if_negative(f"(str.in_re x {regex.to_smt(self.flags)})", positive),
        ]

        results = self.evaluate({pattern: values for pattern in regex.patterns()})
        if results is None:
            return formula, None
        return formula, any(regex.matches(results, value) == positive for value in values)

    def lang_inclusion(self) -> tuple[Candidate, bool | None]:
        r"""Generates a formula that holds iff the language of a regex A is (or is not) included in the language of a regex B.

        A and B are an ECMAScript regex and a regex derived from it (see DERIVED_PATTERNS), two unrelated ECMAScript regexes, or combinations of two ECMAScript regexes by language operations.
        Half of the time, the inclusion holds by construction, and the witness candidates only check that none of them refutes it.
        Otherwise, it does not hold, which a witness candidate in A and not in B shows.
        The formula is a string x in A and not in B, an equation (re.inter A B) = A or (re.union A B) = B, or the negation of the latter.

        Example (the inclusion holds by the construction any_suffix, so the formula is unsat):
            (declare-const x String)
            (assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\S{6,14}$")
                                          ((_ re.from_regex ecma2020) "(?:^\S{6,14}$).*"))))

        Returns:
            tuple[Candidate, bool | None]: The formula and its status, True for sat; None if a regex cannot be evaluated or no candidate refutes the inclusion.
        """
        formula = self.create_empty_formula("lang_inclusion")
        candidates = [self.get_random_payload() for _ in range(WITNESS_CANDIDATES)]
        holds = self.rng.random() < 0.5
        choice = self.rng.random()

        # A derived pattern D, which is in the relation with P by construction.
        if choice < 0.75:
            pattern = self.get_random_pattern()
            relations = {"subset", "superset", "equal"} if holds else {"subset", "superset"}
            kind, derived, relation = self.derive_pattern(pattern, relations, self.rng.choice(candidates))
            p, d = LangRegex.ecma(pattern), LangRegex.ecma(derived)
            # If the inclusion holds, D is included in P, or vice versa, or both; otherwise, it is the other way round.
            if relation == "equal":
                first, second = self.rng.choice([(p, d), (d, p)])
            else:
                first, second = (d, p) if (relation == "subset") == holds else (p, d)
        # Two ECMAScript regexes, combined by language operations if the inclusion holds.
        else:
            p, q = (LangRegex.ecma(pattern) for pattern in self.get_distinct_patterns(2))
            if holds:
                kind, first, second = self.rng.choice(
                    [
                        ("inter_in_operand", LangRegex("inter", p, q), p),
                        ("operand_in_union", p, LangRegex("union", p, q)),
                        ("diff_in_operand", LangRegex("diff", p, q), p),
                        ("diff_in_comp", LangRegex("diff", p, q), LangRegex("comp", q)),
                    ]
                )
            else:
                kind, first, second = self.rng.choice(
                    [
                        ("unrelated", p, q),
                        ("operand_in_inter", p, LangRegex("inter", p, q)),
                        ("union_in_operand", LangRegex("union", p, q), p),
                    ]
                )

        # The candidates in the first regex and not in the second one refute the inclusion.
        evaluated = self.evaluate_pair(first, second, candidates)
        if evaluated is None:
            return formula, None
        refuted = any(a and not b for a, b in zip(*evaluated))
        if holds and refuted:
            self.report_refuted("lang_inclusion", kind, first, second)
            return formula, None
        if not holds and not refuted:
            return formula, None

        a, b = first.to_smt(self.flags), second.to_smt(self.flags)
        encoding = self.rng.choice(["diff", "memberships", "inter_equation", "union_equation", "union_disequation"])
        if encoding == "diff":
            formula.declare("x")
            formula.assertions.append(f"(str.in_re x (re.diff {a} {b}))")
        elif encoding == "memberships":
            formula.declare("x")
            formula.assertions += [f"(str.in_re x {a})", f"(not (str.in_re x {b}))"]
        elif encoding == "inter_equation":
            formula.assertions.append(f"(= (re.inter {a} {b}) {a})")
        elif encoding == "union_equation":
            formula.assertions.append(f"(= (re.union {a} {b}) {b})")
        else:
            formula.assertions.append(f"(not (= (re.union {a} {b}) {b}))")
        formula.details = f"construction: {kind}, inclusion {'holds' if holds else 'does not hold'}, encoding: {encoding}"

        # The equations hold iff the inclusion does, the other encodings iff it does not.
        return formula, holds == (encoding in ("inter_equation", "union_equation"))

    def lang_equality(self) -> tuple[Candidate, bool | None]:
        r"""Generates a formula that holds iff the languages of two regexes A and B are (or are not) equal.

        A and B are an ECMAScript regex and a regex derived from it (see DERIVED_PATTERNS), two unrelated ECMAScript regexes, or combinations of two ECMAScript regexes by language operations.
        Half of the time, the languages are equal by construction (a derived regex or an identity of the operations), and the witness candidates only check that none of them distinguishes them.
        Otherwise, they differ, which a witness candidate in exactly one of them shows.
        The formula is an equation A = B, its negation, a string x in the symmetric difference of A and B, or a string x whose memberships in A and B differ.

        Example (the languages are equal by the construction any_suffix, so the formula is sat):
            (assert (= ((_ re.from_regex ecma2020) "DE[0-9]{20}") ((_ re.from_regex ecma2020) "(?:DE[0-9]{20}).*")))

        Returns:
            tuple[Candidate, bool | None]: The formula and its status, True for sat; None if a regex cannot be evaluated or no candidate distinguishes the languages.
        """
        formula = self.create_empty_formula("lang_equality")
        candidates = [self.get_random_payload() for _ in range(WITNESS_CANDIDATES)]
        equal = self.rng.random() < 0.5
        choice = self.rng.random()

        # A derived pattern D, equal to P by construction, or included in P or including P.
        if choice < 0.6:
            pattern = self.get_random_pattern()
            relations = {"equal"} if equal else {"subset", "superset"}
            kind, derived, _ = self.derive_pattern(pattern, relations, self.rng.choice(candidates))
            first, second = self.rng.sample([LangRegex.ecma(pattern), LangRegex.ecma(derived)], 2)
        # Identities of the language operations on two ECMAScript regexes, or combinations that differ in general.
        else:
            p, q = (LangRegex.ecma(pattern) for pattern in self.get_distinct_patterns(2))
            if equal:
                kind, first, second = self.rng.choice(
                    [
                        ("union_commutes", LangRegex("union", p, q), LangRegex("union", q, p)),
                        ("inter_commutes", LangRegex("inter", p, q), LangRegex("inter", q, p)),
                        (
                            "de_morgan_union",
                            LangRegex("comp", LangRegex("union", p, q)),
                            LangRegex("inter", LangRegex("comp", p), LangRegex("comp", q)),
                        ),
                        (
                            "de_morgan_inter",
                            LangRegex("comp", LangRegex("inter", p, q)),
                            LangRegex("union", LangRegex("comp", p), LangRegex("comp", q)),
                        ),
                        ("union_absorbs_inter", LangRegex("union", p, LangRegex("inter", p, q)), p),
                        ("inter_absorbs_union", LangRegex("inter", p, LangRegex("union", p, q)), p),
                        ("diff_is_inter_comp", LangRegex("diff", p, q), LangRegex("inter", p, LangRegex("comp", q))),
                        ("double_comp", LangRegex("comp", LangRegex("comp", p)), p),
                    ]
                )
            else:
                kind, first, second = self.rng.choice(
                    [
                        ("unrelated", p, q),
                        ("swapped_diff", LangRegex("diff", p, q), LangRegex("diff", q, p)),
                        ("union_vs_inter", LangRegex("union", p, q), LangRegex("inter", p, q)),
                        ("union_vs_operand", LangRegex("union", p, q), p),
                    ]
                )

        # The candidates in exactly one of the regexes distinguish them.
        evaluated = self.evaluate_pair(first, second, candidates)
        if evaluated is None:
            return formula, None
        distinguished = any(a != b for a, b in zip(*evaluated))
        if equal and distinguished:
            self.report_refuted("lang_equality", kind, first, second)
            return formula, None
        if not equal and not distinguished:
            return formula, None

        a, b = first.to_smt(self.flags), second.to_smt(self.flags)
        encoding = self.rng.choice(["equation", "disequation", "symmetric_difference", "different_memberships"])
        if encoding == "equation":
            formula.assertions.append(f"(= {a} {b})")
        elif encoding == "disequation":
            formula.assertions.append(f"(not (= {a} {b}))")
        elif encoding == "symmetric_difference":
            formula.declare("x")
            formula.assertions.append(f"(str.in_re x (re.union (re.diff {a} {b}) (re.diff {b} {a})))")
        else:
            formula.declare("x")
            formula.assertions.append(f"(not (= (str.in_re x {a}) (str.in_re x {b})))")
        formula.details = f"construction: {kind}, languages {'equal' if equal else 'differ'}, encoding: {encoding}"

        # The equation holds iff the languages are equal, the other encodings iff they differ.
        return formula, equal == (encoding == "equation")

    # ---------------------------------------------------------------- driver

    def generate(self, family: str, counts: dict[str, dict[str, int]]) -> tuple[Candidate, bool] | None:
        """Generates a formula of the family, preferring the status that is less frequent in the family so far.

        Args:
            family (str): Name of the family.
            counts (dict[str, dict[str, int]]): Numbers of the formulas generated so far, {family: {"sat": int, "unsat": int}}.

        Returns:
            tuple[Candidate, bool]: The formula and its status, True for sat.
        """
        generate_formula = self.family_generators[family]
        wanted_status = counts[family]["sat"] <= counts[family]["unsat"]

        # The last generated formula with the other status, (candidate, status).
        fallback = None

        for attempt in itertools.count(1):
            candidate, status = generate_formula()

            # A formula whose regexes cannot be evaluated (status None) is thrown away.
            if status is not None:
                if status == wanted_status:
                    return candidate, status
                fallback = (candidate, status)

            # After BALANCE_ATTEMPTS attempts, the formula with the other status is taken.
            # If there is none yet (all the formulas were thrown away), the generation goes on.
            if attempt >= BALANCE_ATTEMPTS and fallback is not None:
                return fallback


def main() -> None:
    """Generates the formulas into the output folder and prints the numbers of sat and unsat formulas per family."""

    # Parse the arguments.
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument(
        "--unicode", action="store_true", help="regexes with the u flag (Unicode mode) instead of no flags (BMP mode)"
    )
    parser.add_argument("--count", type=int, default=4000, help="number of formulas (default 4000)")
    parser.add_argument("--seed", type=int, default=42, help="seed of the random generator (default 42)")
    parser.add_argument(
        "--z3",
        help="skip the patterns this solver does not support (answers neither sat nor unsat for a plain membership)",
    )
    parser.add_argument("--z3-timeout", type=float, default=5.0, help="timeout of the support check (default 5 s)")
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
    generator = Generator(args)

    # Split the formulas between the families by their weights.
    # Rounding can leave at most a few formulas missing, they are filled with one formula of every family in turn.
    # The order of the families is random.
    total_weight = sum(FAMILY_WEIGHTS.values())
    families = [
        family for family, weight in FAMILY_WEIGHTS.items() for _ in range(round(args.count * weight / total_weight))
    ]
    families = (families + list(FAMILY_WEIGHTS))[: args.count]
    generator.rng.shuffle(families)

    # Generate and write the formulas one by one.
    counts = {family: {"sat": 0, "unsat": 0} for family in FAMILY_WEIGHTS}
    for index, family in enumerate(families):
        candidate, status = generator.generate(family, counts)
        counts[family]["sat" if status else "unsat"] += 1
        with open(os.path.join(args.out, f"{family}_{index:04d}.smt2"), "w", encoding="ascii") as f:
            f.write(candidate.text(status))
        if (index + 1) % 100 == 0:
            print(f"{index + 1} formulas written", file=sys.stderr)
    generator.oracle.stop()

    # Print the statuses per family and the numbers of the loaded patterns that were checked.
    print(f"{'family':<18} {'sat':>5} {'unsat':>5}")
    for family, c in counts.items():
        print(f"{family:<18} {c['sat']:5d} {c['unsat']:5d}")
    total_sat = sum(c["sat"] for c in counts.values())
    total_unsat = sum(c["unsat"] for c in counts.values())
    print(f"{'total':<18} {total_sat:5d} {total_unsat:5d}")
    checked = [generator.usable[p] for p in generator.non_regular + generator.regular if p in generator.usable]
    print(f"patterns usable: {sum(checked)}, rejected (unsupported or not evaluable in time): {checked.count(False)}")
    print(f"known relations refuted by a witness candidate: {generator.refuted_constructions}")


if __name__ == "__main__":
    main()
