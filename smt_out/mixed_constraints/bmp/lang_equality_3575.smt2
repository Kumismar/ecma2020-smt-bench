; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^([0-2][0-9]|(3)[0-1])(-)(((0)[0-9])|((1)[0-2]))(-)\d{4}$") ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{16,}")) (re.inter ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{16,}") ((_ re.from_regex ecma2020) "^([0-2][0-9]|(3)[0-1])(-)(((0)[0-9])|((1)[0-2]))(-)\d{4}$"))))
(check-sat)
