; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}\s\-]+$") ((_ re.from_regex ecma2020 u) "^[0]*[1-9][0-9]{4,5}$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}\s\-]+$")) (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}\s\-]+$") ((_ re.from_regex ecma2020 u) "^[0]*[1-9][0-9]{4,5}$"))))
(check-sat)
