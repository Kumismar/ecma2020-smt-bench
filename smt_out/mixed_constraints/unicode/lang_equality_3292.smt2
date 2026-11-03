; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[5][0-9]{9}") (re.union ((_ re.from_regex ecma2020 u) "^[5][0-9]{9}") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,5}$"))) ((_ re.from_regex ecma2020 u) "^[5][0-9]{9}")))
(check-sat)
