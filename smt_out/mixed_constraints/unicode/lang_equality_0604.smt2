; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020 u) "^[0-9]{8}[a-zA-Z]{1}$") ((_ re.from_regex ecma2020 u) "(0\d{1,2}-\d{6,8})?")) (re.diff ((_ re.from_regex ecma2020 u) "(0\d{1,2}-\d{6,8})?") ((_ re.from_regex ecma2020 u) "^[0-9]{8}[a-zA-Z]{1}$")))))
(check-sat)
