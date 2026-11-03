; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$") (re.inter ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&\u{2019}*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+){1,}$"))) ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$")) (re.diff ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$") (re.union ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$") (re.inter ((_ re.from_regex ecma2020 u) "^\d{3}-\d{3}-\d{4}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&\u{2019}*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+){1,}$")))))))
(check-sat)
