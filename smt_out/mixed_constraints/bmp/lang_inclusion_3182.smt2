; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[\x20-\x7e\x80-\xff]*$") (re.union ((_ re.from_regex ecma2020) "^[\x20-\x7e\x80-\xff]*$") ((_ re.from_regex ecma2020) "^[1-9]\d*$"))) ((_ re.from_regex ecma2020) "^[\x20-\x7e\x80-\xff]*$")))
(check-sat)
