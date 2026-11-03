"""SMT-LIB string literals, terms and output folders shared by the generators of the benchmarks.

Every formula contains only printable ASCII, as the SMT-LIB standard defines string literals.
Every other character up to MAX_CHAR is written as an escape \\u{...}, see escape_smt2().
"""

import os
import sys

# The root of the repository, which holds smt_out/.
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# The largest character of SMT-LIB strings, the last code point of Plane 2.
MAX_CHAR = 0x2FFFF


def escape_smt2(s: str) -> str:
    """Escapes a string for an SMT-LIB string literal.

    Args:
        s (str): The string to escape, its code points are the SMT-LIB characters.

    Returns:
        str: The escaped string, without the surrounding quotes.
    """
    out = []
    for i, c in enumerate(s):
        code = ord(c)
        # A quote is escaped by doubling it.
        if c == '"':
            out.append('""')
        # "\u" would start an SMT-LIB escape sequence, so the backslash itself is escaped.
        elif c == "\\" and s[i + 1 : i + 2] == "u":
            out.append("\\u{5c}")
        # Control and non-ASCII characters, a supplementary code point is a single escape.
        elif code < 0x20 or code > 0x7E:
            out.append(f"\\u{{{code:x}}}")
        else:
            out.append(c)
    return "".join(out)


def lit(s: str) -> str:
    """Makes an SMT-LIB string literal.

    Args:
        s (str): The string.

    Returns:
        str: The escaped string in quotes.
    """
    return f'"{escape_smt2(s)}"'


def is_representable(s: str) -> bool:
    """Checks whether SMT-LIB strings can contain all the code points of a string.

    Args:
        s (str): The string.

    Returns:
        bool: True if no code point is above MAX_CHAR; False otherwise.
    """
    return all(ord(c) <= MAX_CHAR for c in s)


def prepare_output_folder(out: str) -> None:
    """Creates the folder for the generated formulas and deletes the .smt2 files in it.

    smt_out and its subfolders hold the published formulas, so their files are deleted only after a confirmation.

    Args:
        out (str): The folder.
    """
    published = os.path.realpath(os.path.join(ROOT, "smt_out"))
    if os.path.commonpath([os.path.realpath(out), published]) == published:
        try:
            answer = input(f"All the .smt2 files in {out} will be deleted and overwritten. Continue? [y/N] ")
        except EOFError:
            answer = ""
        if answer.strip().lower() not in ("y", "yes"):
            sys.exit("Aborted, smt_out is left unchanged.")

    os.makedirs(out, exist_ok=True)
    for name in os.listdir(out):
        if name.endswith(".smt2"):
            os.remove(os.path.join(out, name))


def negate_if_negative(formula: str, positive: bool) -> str:
    """Negates the formula unless it is positive.

    Args:
        formula (str): SMT-LIB formula.
        positive (bool): False to negate the formula.

    Returns:
        str: The formula or its negation.
    """
    return formula if positive else f"(not {formula})"


def make_ecma_regex(pattern: str, flags: str) -> str:
    """Makes an SMT-LIB regex of an ECMAScript pattern.

    Args:
        pattern (str): The regex pattern.
        flags (str): Flags of the regex, "u" for a Unicode pattern and "" for a BMP pattern.

    Returns:
        str: The SMT-LIB regex.
    """
    regex = f"(_ re.from_regex ecma2020 {flags})" if flags else "(_ re.from_regex ecma2020)"
    return f"({regex} {lit(pattern)})"


def make_ecma(term: str, pattern: str, flags: str, positive: bool = True) -> str:
    """Makes a (negated) membership of a string term in an ECMAScript regex.

    Args:
        term (str): SMT-LIB string term.
        pattern (str): The regex pattern.
        flags (str): Flags of the regex, see make_ecma_regex().
        positive (bool): False for the negated membership.

    Returns:
        str: The SMT-LIB membership.
    """
    return negate_if_negative(f"(str.in_re {term} {make_ecma_regex(pattern, flags)})", positive)


def make_or(var: str, values: list[str]) -> str:
    """Makes a disjunction of equalities restricting a variable to the given values.

    Args:
        var (str): The variable.
        values (list[str]): Its possible values, duplicates are ignored.

    Returns:
        str: The SMT-LIB formula.
    """
    values = list(dict.fromkeys(values))
    if len(values) == 1:
        return f"(= {var} {lit(values[0])})"
    return "(or {})".format(" ".join(f"(= {var} {lit(v)})" for v in values))


def make_clause(*formulas: str) -> str:
    """Makes a disjunction of formulas.

    Args:
        *formulas (str): SMT-LIB formulas.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(or {' '.join(formulas)})"


def make_concat(var: str, *terms: str) -> str:
    """Makes a constraint that a variable is the concatenation of string terms.

    Args:
        var (str): The variable.
        *terms (str): SMT-LIB string terms, a constant must be a literal made by lit().

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= {var} (str.++ {' '.join(terms)}))"


def make_substr(var: str, term: str, start: int, length: int) -> str:
    """Makes a constraint that a variable is a substring of a string term.

    Args:
        var (str): The variable, or a constant made by lit().
        term (str): SMT-LIB string term.
        start (int): Position where the substring starts.
        length (int): Maximal length of the substring, it is shorter if the string term ends earlier.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= {var} (str.substr {term} {start} {length}))"


def make_replace_term(term: str, old: str, new: str) -> str:
    """Makes a string term with the first occurrence of a constant replaced.

    Args:
        term (str): SMT-LIB string term.
        old (str): The constant to replace.
        new (str): The constant that replaces it.

    Returns:
        str: The SMT-LIB string term.
    """
    return f"(str.replace {term} {lit(old)} {lit(new)})"


def make_replace(var: str, term: str, old: str, new: str) -> str:
    """Makes a constraint that a variable is a string term with the first occurrence of a constant replaced.

    Args:
        var (str): The variable, or a constant made by lit().
        term (str): SMT-LIB string term.
        old (str): The constant to replace.
        new (str): The constant that replaces it.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= {var} {make_replace_term(term, old, new)})"


def make_char_at(term: str, index: int, char: str) -> str:
    """Makes a constraint that a string term has a character at a position.

    Args:
        term (str): SMT-LIB string term.
        index (int): The position.
        char (str): The character.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= (str.at {term} {index}) {lit(char)})"


def make_indexof(term: str, part: str, index: int) -> str:
    """Makes a constraint that the first occurrence of a constant in a string term is at a position.

    Args:
        term (str): SMT-LIB string term.
        part (str): The constant.
        index (int): The position, not negative.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= (str.indexof {term} {lit(part)} 0) {index})"


def make_prefixof(term: str, prefix: str) -> str:
    """Makes a constraint that a string term starts with a constant.

    Args:
        term (str): SMT-LIB string term.
        prefix (str): The constant prefix.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(str.prefixof {lit(prefix)} {term})"


def make_suffixof(term: str, suffix: str) -> str:
    """Makes a constraint that a string term ends with a constant.

    Args:
        term (str): SMT-LIB string term.
        suffix (str): The constant suffix.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(str.suffixof {lit(suffix)} {term})"


def make_contains(term: str, part: str) -> str:
    """Makes a constraint that a string term contains a constant.

    Args:
        term (str): SMT-LIB string term.
        part (str): The constant substring.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(str.contains {term} {lit(part)})"


def make_length(term: str, length: int) -> str:
    """Makes a constraint that a string term has a length.

    Args:
        term (str): SMT-LIB string term.
        length (int): The length.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(= (str.len {term}) {length})"


def make_max_length(term: str, max_length: int) -> str:
    """Makes a constraint that a string term is at most a length long.

    Args:
        term (str): SMT-LIB string term.
        max_length (int): The maximal length.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(<= (str.len {term}) {max_length})"


def make_min_length(term: str, min_length: int) -> str:
    """Makes a constraint that a string term is at least a length long.

    Args:
        term (str): SMT-LIB string term.
        min_length (int): The minimal length.

    Returns:
        str: The SMT-LIB formula.
    """
    return f"(>= (str.len {term}) {min_length})"
