; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter (re.union ((_ re.from_regex ecma2020 u) "^([0-9]{2})-([0-9]{2})-([0-9]{4})$") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=(.*[\W]){1,})(?!.*\s).{8,}")) ((_ re.from_regex ecma2020 u) "^([0-9]{2})-([0-9]{2})-([0-9]{4})$")) (re.union ((_ re.from_regex ecma2020 u) "^([0-9]{2})-([0-9]{2})-([0-9]{4})$") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=(.*[\W]){1,})(?!.*\s).{8,}"))))
(check-sat)
