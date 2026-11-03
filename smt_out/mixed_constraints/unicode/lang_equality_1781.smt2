; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9]{0,20}$") ((_ re.from_regex ecma2020 u) "^[_A-z0-9]{1,}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[_A-z0-9]{1,}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9]{0,20}$"))))
(check-sat)
