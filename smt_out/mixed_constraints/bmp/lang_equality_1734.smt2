; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b") ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}$")) (re.union ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}$") ((_ re.from_regex ecma2020) "\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b"))) (re.diff (re.union ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}$") ((_ re.from_regex ecma2020) "\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b")) (re.union ((_ re.from_regex ecma2020) "\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b") ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,4}$"))))))
(check-sat)
