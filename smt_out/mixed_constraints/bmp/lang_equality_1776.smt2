; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "(?:^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?!.*\s)[a-zA-Z\d\W\D]{8,99}$).*") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?!.*\s)[a-zA-Z\d\W\D]{8,99}$")))
(check-sat)
