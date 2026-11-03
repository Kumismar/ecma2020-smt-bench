; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^[0-9]{6}$") ((_ re.from_regex ecma2020) "^[\x00-\x7F]+$")) (re.diff ((_ re.from_regex ecma2020) "^[\x00-\x7F]+$") ((_ re.from_regex ecma2020) "^[0-9]{6}$")))))
(check-sat)
