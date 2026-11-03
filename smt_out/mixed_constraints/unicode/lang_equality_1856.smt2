; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$") (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$") ((_ re.from_regex ecma2020 u) "^(13[0-9]|15[0-9]|18[0-9])\d{8}$"))) ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$") (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$") (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s-]+$") ((_ re.from_regex ecma2020 u) "^(13[0-9]|15[0-9]|18[0-9])\d{8}$")))))))
(check-sat)
