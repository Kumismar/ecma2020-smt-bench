; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^\s*([A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{1,}([\.,] |[-']| ))+[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]+\.?\s*$|\w+") ((_ re.from_regex ecma2020 u) "menu>(?:^\s*([A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{1,}([\.,] |[-']| ))+[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]+\.?\s*$|\w+)")) ((_ re.from_regex ecma2020 u) "menu>(?:^\s*([A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]{1,}([\.,] |[-']| ))+[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}]+\.?\s*$|\w+)")))
(check-sat)
