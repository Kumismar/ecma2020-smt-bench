; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[0-9_]{7,15}$") (re.union ((_ re.from_regex ecma2020 u) "^[0-9_]{7,15}$") ((_ re.from_regex ecma2020 u) "(^[-_A-Za-z0-9]+$)"))) ((_ re.from_regex ecma2020 u) "^[0-9_]{7,15}$")))
(check-sat)
