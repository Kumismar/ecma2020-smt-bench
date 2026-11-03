; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+[-]?[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$") ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+[-]?[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$)|est")) (re.diff ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+[-]?[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$)|est") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+[-]?[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")))))
(check-sat)
