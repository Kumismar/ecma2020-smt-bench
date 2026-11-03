; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9_@.+-]*$") (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9_@.+-]*$") ((_ re.from_regex ecma2020) "^.+@\S+\.\S+$"))) ((_ re.from_regex ecma2020) "^[A-Za-z0-9_@.+-]*$")))
(check-sat)
