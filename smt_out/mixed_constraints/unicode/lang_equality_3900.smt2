; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{10}") (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{10}") ((_ re.from_regex ecma2020 u) "^[^\W][\.a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*\.[a-zA-Z]{2,4}$"))) ((_ re.from_regex ecma2020 u) "^[0-9]{10}"))))
(check-sat)
