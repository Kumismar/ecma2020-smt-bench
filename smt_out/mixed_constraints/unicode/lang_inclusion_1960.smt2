; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[\w'\-,.][^0-9_!\u{c2}\u{a1}?\u{c3}\u{b7}?\u{c2}\u{bf}/\\+=@#$%\u{cb}\u{2020}&*(){}|~<>;:[\]]{2,}$") ((_ re.from_regex ecma2020 u) "(([X-Z]{1})(\d{7})([A-Z]{1}))|((\d{8})([A-Z]{1}))")) ((_ re.from_regex ecma2020 u) "^[\w'\-,.][^0-9_!\u{c2}\u{a1}?\u{c3}\u{b7}?\u{c2}\u{bf}/\\+=@#$%\u{cb}\u{2020}&*(){}|~<>;:[\]]{2,}$")) ((_ re.from_regex ecma2020 u) "^[\w'\-,.][^0-9_!\u{c2}\u{a1}?\u{c3}\u{b7}?\u{c2}\u{bf}/\\+=@#$%\u{cb}\u{2020}&*(){}|~<>;:[\]]{2,}$"))))
(check-sat)
