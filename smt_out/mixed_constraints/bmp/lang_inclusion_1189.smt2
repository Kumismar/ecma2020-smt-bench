; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[- _.A-z0-9\u{c0}-\u{ff}]{2,}$") ((_ re.from_regex ecma2020) "^((0[1-9]|[12]\d|3[01]|[4-7][0-9])([04][1-9]|[15][0-2])\d{2}(\d{5}))$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[- _.A-z0-9\u{c0}-\u{ff}]{2,}$"))))
(check-sat)
