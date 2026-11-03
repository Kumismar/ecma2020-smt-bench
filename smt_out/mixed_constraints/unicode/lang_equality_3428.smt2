; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) ".{3,3}") ((_ re.from_regex ecma2020 u) "^[A-\u{17e}0-9-:&.'_ ]{2,}$"))))
(check-sat)
