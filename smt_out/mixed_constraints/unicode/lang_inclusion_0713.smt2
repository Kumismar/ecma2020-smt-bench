; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_inter, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{3,12}") (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{3,12}") ((_ re.from_regex ecma2020 u) "^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$"))) (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{3,12}") ((_ re.from_regex ecma2020 u) "^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$"))))
(check-sat)
