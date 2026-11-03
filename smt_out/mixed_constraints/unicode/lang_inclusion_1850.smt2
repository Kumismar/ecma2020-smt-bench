; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{3,}") ((_ re.from_regex ecma2020 u) "^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*\.(\w{2}|(com|net|org|e|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum))$")) ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{3,}")) ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{3,}"))))
(check-sat)
