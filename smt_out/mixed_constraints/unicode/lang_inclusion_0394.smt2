; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[0-9()\. -+]{10,15}$") ((_ re.from_regex ecma2020 u) ".{7,255}")) ((_ re.from_regex ecma2020 u) "^[0-9()\. -+]{10,15}$")) ((_ re.from_regex ecma2020 u) "^[0-9()\. -+]{10,15}$")))
(check-sat)
