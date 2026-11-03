; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^\S[\w/ ]*") ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f6}\u{3000}\s]+$"))))
(check-sat)
