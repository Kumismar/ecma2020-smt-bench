; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^BE\d{3,7}$") ((_ re.from_regex ecma2020) "\d{9,10}")) (re.inter ((_ re.from_regex ecma2020) "\d{9,10}") ((_ re.from_regex ecma2020) "^BE\d{3,7}$"))))
(check-sat)
