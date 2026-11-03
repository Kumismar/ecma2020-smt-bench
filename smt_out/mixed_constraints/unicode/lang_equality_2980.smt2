; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z\d\s#.-]+$") ((_ re.from_regex ecma2020 u) "^.+@.+$")) (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z\d\s#.-]+$") ((_ re.from_regex ecma2020 u) "^.+@.+$"))))
(check-sat)
