; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) " onpa(?:^[a-gA-G+]{1}[0-6+]{1}$)") ((_ re.from_regex ecma2020 u) "^[a-gA-G+]{1}[0-6+]{1}$")) ((_ re.from_regex ecma2020 u) "^[a-gA-G+]{1}[0-6+]{1}$")))
(check-sat)
