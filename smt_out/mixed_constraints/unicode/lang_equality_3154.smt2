; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}") ((_ re.from_regex ecma2020 u) ".{7,30}")) (re.inter ((_ re.from_regex ecma2020 u) ".{7,30}") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}"))))
(check-sat)
