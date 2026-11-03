; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^(?:^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}$)$") ((_ re.from_regex ecma2020 u) "^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}$")) ((_ re.from_regex ecma2020 u) "^(?:^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}$)$")))
(check-sat)
