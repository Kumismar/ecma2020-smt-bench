; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "(?:^[\u{3041}-\u{3093}\u{30a1}-\u{30f6}\u{30fc}\u{4e00}-\u{9fa0}\u{3000} \r\n\t]+$)|applet")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f6}\u{30fc}\u{4e00}-\u{9fa0}\u{3000} \r\n\t]+$"))))
(check-sat)
