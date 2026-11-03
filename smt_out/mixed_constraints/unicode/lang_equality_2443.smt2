; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{5}$") ((_ re.from_regex ecma2020 u) "[+0-9]+")) ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{5}$"))))
(check-sat)
