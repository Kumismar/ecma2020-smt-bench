; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[A-Z0-9\- ]+") ((_ re.from_regex ecma2020) "[0-9\s-]{4,6}")) (re.inter ((_ re.from_regex ecma2020) "[0-9\s-]{4,6}") ((_ re.from_regex ecma2020) "^[A-Z0-9\- ]+"))))
(check-sat)
