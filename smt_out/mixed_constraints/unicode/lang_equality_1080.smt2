; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[^@\s]+@[^@\s]+\.[^@\s]{2,}$") ((_ re.from_regex ecma2020 u) "[+-]?d+(?:.d+)?[mpunk]?")) (re.inter ((_ re.from_regex ecma2020 u) "^[^@\s]+@[^@\s]+\.[^@\s]{2,}$") ((_ re.from_regex ecma2020 u) "[+-]?d+(?:.d+)?[mpunk]?")))))
(check-sat)
