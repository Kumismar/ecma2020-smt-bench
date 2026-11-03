; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^\D{1,15}$") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=-_!*()@%&]).{8,}$")) (re.diff ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=-_!*()@%&]).{8,}$") ((_ re.from_regex ecma2020) "^\D{1,15}$")))))
(check-sat)
