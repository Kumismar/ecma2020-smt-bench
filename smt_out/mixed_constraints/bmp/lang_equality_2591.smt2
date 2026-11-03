; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^(19|20)\d{2}") ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,15}")) (re.diff ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,15}") ((_ re.from_regex ecma2020) "^(19|20)\d{2}")))))
(check-sat)
