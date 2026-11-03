; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "(?:^[a-zA-Z ]*$).*") ((_ re.from_regex ecma2020 u) "^[a-zA-Z ]*$")) (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z ]*$") ((_ re.from_regex ecma2020 u) "(?:^[a-zA-Z ]*$).*")))))
(check-sat)
