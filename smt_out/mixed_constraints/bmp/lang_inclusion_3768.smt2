; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter (re.union ((_ re.from_regex ecma2020) "^1[3456789]{1}\d{9}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9, ./@_]{1,40}")) ((_ re.from_regex ecma2020) "^1[3456789]{1}\d{9}$")) (re.union ((_ re.from_regex ecma2020) "^1[3456789]{1}\d{9}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9, ./@_]{1,40}"))))
(check-sat)
