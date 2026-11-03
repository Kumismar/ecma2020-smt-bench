; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "^[a-z A-Z 0-9 \- ' / . &]{2,80}$") ((_ re.from_regex ecma2020 u) "^([A-Z|a-z|0-9](.|_){0,1})+[A-Z|a-z|0-9]@([A-Z|a-z|0-9])+((.){0,1}[A-Z|a-z|0-9]){2}.[a-z]{2,3}$")) ((_ re.from_regex ecma2020 u) "^[a-z A-Z 0-9 \- ' / . &]{2,80}$")) ((_ re.from_regex ecma2020 u) "^[a-z A-Z 0-9 \- ' / . &]{2,80}$")))
(check-sat)
