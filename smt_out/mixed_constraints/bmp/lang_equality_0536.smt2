; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) ".*(?:^[9|8|7|6|5|4|3|2|1|0]\d{8}$)") ((_ re.from_regex ecma2020) "^[9|8|7|6|5|4|3|2|1|0]\d{8}$")))
(check-sat)
