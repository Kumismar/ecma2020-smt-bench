; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[a-\u{17c}A-\u{17b}]{2,20}$") ((_ re.from_regex ecma2020 u) "^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$")) (re.inter ((_ re.from_regex ecma2020 u) "^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$") ((_ re.from_regex ecma2020 u) "^[a-\u{17c}A-\u{17b}]{2,20}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$") ((_ re.from_regex ecma2020 u) "^[a-\u{17c}A-\u{17b}]{2,20}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[a-\u{17c}A-\u{17b}]{2,20}$") ((_ re.from_regex ecma2020 u) "^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"))))))
(check-sat)
