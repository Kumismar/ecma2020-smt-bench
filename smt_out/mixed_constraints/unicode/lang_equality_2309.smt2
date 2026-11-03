; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^0[1-9]\d{8}") ((_ re.from_regex ecma2020 u) "(\d{4}([\-]\d{3})?)$")) (re.inter ((_ re.from_regex ecma2020 u) "^0[1-9]\d{8}") (re.comp ((_ re.from_regex ecma2020 u) "(\d{4}([\-]\d{3})?)$")))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^0[1-9]\d{8}") (re.comp ((_ re.from_regex ecma2020 u) "(\d{4}([\-]\d{3})?)$"))) (re.diff ((_ re.from_regex ecma2020 u) "^0[1-9]\d{8}") ((_ re.from_regex ecma2020 u) "(\d{4}([\-]\d{3})?)$"))))))
(check-sat)
