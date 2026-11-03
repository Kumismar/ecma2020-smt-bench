; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\w'\-,.][^_!\u{c2}\u{a1}?\u{c3}\u{b7}?\u{c2}\u{bf}/\\+=@#$%\u{cb}\u{2020}&*(){}|~<>;:[\]]{2,}$") ((_ re.from_regex ecma2020) "^[-0-9]{1,}$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[\w'\-,.][^_!\u{c2}\u{a1}?\u{c3}\u{b7}?\u{c2}\u{bf}/\\+=@#$%\u{cb}\u{2020}&*(){}|~<>;:[\]]{2,}$"))))
(check-sat)
