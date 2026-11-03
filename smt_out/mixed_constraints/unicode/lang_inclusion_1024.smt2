; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451} ]{1,15}")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451} ]{1,15}") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{3}|[0-9]{1,3})(\]?)$")))))
(check-sat)
