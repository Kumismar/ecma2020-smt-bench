; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "2") (re.union ((_ re.from_regex ecma2020) "2") ((_ re.from_regex ecma2020) "^[9|8|7|6|5|4|3|2]\d{8}$"))) (re.union ((_ re.from_regex ecma2020) "2") ((_ re.from_regex ecma2020) "^[9|8|7|6|5|4|3|2]\d{8}$"))))
(check-sat)
