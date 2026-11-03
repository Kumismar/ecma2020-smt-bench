; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,25}") ((_ re.from_regex ecma2020 u) "^(\s*)?(\+)?([- _():=+\/]?\d[- _():=+]?){4,20}(\s*)?$"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(\s*)?(\+)?([- _():=+\/]?\d[- _():=+]?){4,20}(\s*)?$") ((_ re.from_regex ecma2020 u) "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,25}"))))))
(check-sat)
