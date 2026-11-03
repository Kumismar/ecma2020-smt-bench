; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^\(\d{3}\) \d{3}-\d{4}$") ((_ re.from_regex ecma2020) "^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$")) (re.inter ((_ re.from_regex ecma2020) "^\(\d{3}\) \d{3}-\d{4}$") ((_ re.from_regex ecma2020) "^(?=.{8,20})(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*$")))))
(check-sat)
