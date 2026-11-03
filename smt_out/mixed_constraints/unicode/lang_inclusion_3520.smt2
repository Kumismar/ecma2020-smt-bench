; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "^0[1-7][0-9]{7}$") ((_ re.from_regex ecma2020 u) "^.{0,50}$")) ((_ re.from_regex ecma2020 u) "^0[1-7][0-9]{7}$")) ((_ re.from_regex ecma2020 u) "^0[1-7][0-9]{7}$"))))
(check-sat)
