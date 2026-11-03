; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{6,13}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._-]{1,50}")) ((_ re.from_regex ecma2020 u) "^[0-9]{6,13}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[0-9]{6,13}$") (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{6,13}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._-]{1,50}"))))))
(check-sat)
