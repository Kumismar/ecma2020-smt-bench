; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) ".*(?:^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}|\u{3000}| ]+$)") ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}|\u{3000}| ]+$")))
(check-sat)
