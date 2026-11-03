; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^1([38]\d|5[0-35-9]|7[3678])\d{8}$") ((_ re.from_regex ecma2020 u) "(^[0-9][1-9][ ]?[0-9]{3}[ -][0-9]{4,7}$)|(^\+[0-9]{9,}$)")) ((_ re.from_regex ecma2020 u) "^1([38]\d|5[0-35-9]|7[3678])\d{8}$"))))
(check-sat)
