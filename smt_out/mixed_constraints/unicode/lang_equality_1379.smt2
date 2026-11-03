; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) " drag|(?:^[\u{30a1}-\u{30f6}\u{30fc}]+$)") ((_ re.from_regex ecma2020 u) "^[\u{30a1}-\u{30f6}\u{30fc}]+$")))
(check-sat)
