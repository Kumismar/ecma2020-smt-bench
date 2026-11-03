; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.inter ((_ re.from_regex ecma2020) "^\D{3,30}$") ((_ re.from_regex ecma2020) "^09[0-9]{8}$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^\D{3,30}$")) (re.comp ((_ re.from_regex ecma2020) "^09[0-9]{8}$")))))
(check-sat)
