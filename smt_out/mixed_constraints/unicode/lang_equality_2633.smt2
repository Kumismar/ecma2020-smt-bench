; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{c0}-\u{fa}\s]{2,30}$")) (re.inter ((_ re.from_regex ecma2020 u) "^") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{c0}-\u{fa}\s]{2,30}$")))))
(check-sat)
