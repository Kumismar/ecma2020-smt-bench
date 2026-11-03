; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_inter, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])(?=.*[0-9]).*") (re.inter ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])(?=.*[0-9]).*") ((_ re.from_regex ecma2020 u) "\+[1]{1}\s\([0-9]{3}\)\s[0-9]{3}\s[0-9]{4}"))) (re.inter ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])(?=.*[0-9]).*") ((_ re.from_regex ecma2020 u) "\+[1]{1}\s\([0-9]{3}\)\s[0-9]{3}\s[0-9]{4}"))))
(check-sat)
