; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_inter, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^.{0,40}") (re.inter ((_ re.from_regex ecma2020 u) "^.{0,40}") ((_ re.from_regex ecma2020 u) "^((((\+31|0|0031)[1-9]{2}[0-9][-]?[0-9]{6}[0-9]*)|((\+31|0|0031)[1-9][0-9][-]?[1-9][0-9]{6}))|(((\+31|0|0031)[\s]?[-]?6){1}[-]?[1-9]{1}[0-9]{7}))"))) (re.inter ((_ re.from_regex ecma2020 u) "^.{0,40}") ((_ re.from_regex ecma2020 u) "^((((\+31|0|0031)[1-9]{2}[0-9][-]?[0-9]{6}[0-9]*)|((\+31|0|0031)[1-9][0-9][-]?[1-9][0-9]{6}))|(((\+31|0|0031)[\s]?[-]?6){1}[-]?[1-9]{1}[0-9]{7}))")))))
(check-sat)
