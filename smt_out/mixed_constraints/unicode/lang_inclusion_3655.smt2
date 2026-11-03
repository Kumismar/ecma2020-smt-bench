; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^\d{2}-\d{5}-\d{4}$") ((_ re.from_regex ecma2020 u) "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57]|19[0-9]|16[0-9])[0-9]{8}$")) ((_ re.from_regex ecma2020 u) "^\d{2}-\d{5}-\d{4}$")) ((_ re.from_regex ecma2020 u) "^\d{2}-\d{5}-\d{4}$")))
(check-sat)
