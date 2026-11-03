; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020 u) "^([\+]\d{11,13})$") ((_ re.from_regex ecma2020 u) "^[^.]+$")) (re.diff ((_ re.from_regex ecma2020 u) "^[^.]+$") ((_ re.from_regex ecma2020 u) "^([\+]\d{11,13})$")))))
(check-sat)
