; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "7$") ((_ re.from_regex ecma2020 u) "^([\D]{3,17}\s[\D]{2,33})$"))) (str.in_re x ((_ re.from_regex ecma2020 u) "7$")))))
(check-sat)
