; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "[a-\u{17c}A-\u{17b}]{2,}\s[a-\u{17c}A-\u{17b}]{2,}") (re.union ((_ re.from_regex ecma2020 u) "[a-\u{17c}A-\u{17b}]{2,}\s[a-\u{17c}A-\u{17b}]{2,}") ((_ re.from_regex ecma2020 u) "^.*[^\s]+.*$"))) ((_ re.from_regex ecma2020 u) "[a-\u{17c}A-\u{17b}]{2,}\s[a-\u{17c}A-\u{17b}]{2,}")))
(check-sat)
