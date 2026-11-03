; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^.{5}$") (re.inter ((_ re.from_regex ecma2020 u) "^.{5}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._\-]+@[0-9a-zA-Z\-]+\.[a-zA-Z.]{2,}$"))) ((_ re.from_regex ecma2020 u) "^.{5}$")))
(check-sat)
