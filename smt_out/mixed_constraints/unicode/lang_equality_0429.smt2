; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[\d]{11}$") (re.union ((_ re.from_regex ecma2020 u) "^[\d]{11}$") ((_ re.from_regex ecma2020 u) "^[A-z\u{410}-\u{44f} ,.'-]+$"))) ((_ re.from_regex ecma2020 u) "^[\d]{11}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[\d]{11}$") (re.inter ((_ re.from_regex ecma2020 u) "^[\d]{11}$") (re.union ((_ re.from_regex ecma2020 u) "^[\d]{11}$") ((_ re.from_regex ecma2020 u) "^[A-z\u{410}-\u{44f} ,.'-]+$")))))))
(check-sat)
