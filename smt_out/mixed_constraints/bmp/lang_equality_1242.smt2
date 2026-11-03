; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9 -]+$") (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9 -]+$") ((_ re.from_regex ecma2020) "^[+]?[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$"))) ((_ re.from_regex ecma2020) "^[A-Za-z0-9 -]+$"))))
(check-sat)
