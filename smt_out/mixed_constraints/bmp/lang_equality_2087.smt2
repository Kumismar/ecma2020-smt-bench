; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z-_ ][a-zA-Z-_ \\s]+$") (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z-_ ][a-zA-Z-_ \\s]+$") ((_ re.from_regex ecma2020) "^([a-z0-9]+[_|.]?)*[a-z0-9]+@([a-z0-9]+[_|.]?)*[a-z0-9]+\.[a-z]{2,3}$"))) ((_ re.from_regex ecma2020) "^[a-zA-Z-_ ][a-zA-Z-_ \\s]+$"))))
(check-sat)
