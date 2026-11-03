; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z\s -]+$") (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z\s -]+$") ((_ re.from_regex ecma2020) "^[0-9-+s()]*$"))) ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z\s -]+$"))))
(check-sat)
