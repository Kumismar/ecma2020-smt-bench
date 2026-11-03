; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) ".*(?:[\u{30a1}-\u{30ff}|\u{3000}| ]*)") ((_ re.from_regex ecma2020 u) "[\u{30a1}-\u{30ff}|\u{3000}| ]*")))
(check-sat)
