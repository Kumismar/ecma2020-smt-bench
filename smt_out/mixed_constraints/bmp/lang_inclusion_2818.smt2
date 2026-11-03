; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.inter ((_ re.from_regex ecma2020) "^[0-9a-zA-Z]{3,4}$") ((_ re.from_regex ecma2020) "^\w{5}$")) ((_ re.from_regex ecma2020) "^[0-9a-zA-Z]{3,4}$")) ((_ re.from_regex ecma2020) "^[0-9a-zA-Z]{3,4}$")))
(check-sat)
