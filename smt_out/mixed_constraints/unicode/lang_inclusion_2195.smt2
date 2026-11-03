; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union (re.union ((_ re.from_regex ecma2020 u) "^[0-9 ]*$") ((_ re.from_regex ecma2020 u) "[a-zA-Z-_ ]{2,40}$")) ((_ re.from_regex ecma2020 u) "^[0-9 ]*$")) ((_ re.from_regex ecma2020 u) "^[0-9 ]*$"))))
(check-sat)
