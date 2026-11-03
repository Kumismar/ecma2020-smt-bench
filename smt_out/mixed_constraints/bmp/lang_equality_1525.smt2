; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "(?:0[1-9]|1[0-2])/[0-9]{2}") ((_ re.from_regex ecma2020) "^[a-zA-Z_\d]+$")) (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z_\d]+$") ((_ re.from_regex ecma2020) "(?:0[1-9]|1[0-2])/[0-9]{2}")))))
(check-sat)
