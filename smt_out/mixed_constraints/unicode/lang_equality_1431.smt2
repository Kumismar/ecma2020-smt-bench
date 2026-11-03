; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) """>tes(?:[a-zA-Z0-9 './,]+$)") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9 './,]+$")))
(check-sat)
