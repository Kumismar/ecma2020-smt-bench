; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "[A-z0-9._%+-]+@[A-z0-9-]+\.[A-z]{2,6}$") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{4,8}")) (re.inter ((_ re.from_regex ecma2020) "[A-z0-9._%+-]+@[A-z0-9-]+\.[A-z]{2,6}$") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{4,8}")))))
(check-sat)
