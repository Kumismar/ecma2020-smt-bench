; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "^(0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])$") ((_ re.from_regex ecma2020 u) "((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,12})")))
(check-sat)
