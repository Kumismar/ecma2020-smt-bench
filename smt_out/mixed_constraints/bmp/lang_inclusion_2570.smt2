; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "(?:^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}_'\s\d]+$)|1\)""")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}_'\s\d]+$"))))
(check-sat)
