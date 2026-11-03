; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_inter, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}") (re.inter ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$"))) (re.inter ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$")))))
(check-sat)
