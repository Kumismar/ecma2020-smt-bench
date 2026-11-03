; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^\d{9}$") ((_ re.from_regex ecma2020 u) "\S{9}")) (re.diff ((_ re.from_regex ecma2020 u) "\S{9}") ((_ re.from_regex ecma2020 u) "^\d{9}$"))))
(check-sat)
