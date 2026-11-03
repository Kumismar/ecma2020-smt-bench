; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}") ((_ re.from_regex ecma2020 u) "^(?:(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30})$"))))
(check-sat)
