; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union (re.union ((_ re.from_regex ecma2020) "^\+7\s\(\d{3}\)\s\d{3}-\d{2}-\d{2}$") ((_ re.from_regex ecma2020) "[^ @]*@[^ @]*\.[^ @]{2,}")) ((_ re.from_regex ecma2020) "^\+7\s\(\d{3}\)\s\d{3}-\d{2}-\d{2}$")) ((_ re.from_regex ecma2020) "^\+7\s\(\d{3}\)\s\d{3}-\d{2}-\d{2}$")))
(check-sat)
