; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "((?=.*[a-zA-Z0-9]).{6,})") ((_ re.from_regex ecma2020) "^\d+([.]\d{0,2}){0,1}$")) (re.diff ((_ re.from_regex ecma2020) "^\d+([.]\d{0,2}){0,1}$") ((_ re.from_regex ecma2020) "((?=.*[a-zA-Z0-9]).{6,})")))))
(check-sat)
