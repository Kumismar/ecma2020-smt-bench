; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^\d{4}/\d{1,2}/\d{1,2}$") ((_ re.from_regex ecma2020 u) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!#^\-%*?_&])[A-Za-z\d@$!#^\-%_*?&]{6,}")) ((_ re.from_regex ecma2020 u) "^\d{4}/\d{1,2}/\d{1,2}$")) (re.inter ((_ re.from_regex ecma2020 u) "^\d{4}/\d{1,2}/\d{1,2}$") ((_ re.from_regex ecma2020 u) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!#^\-%*?_&])[A-Za-z\d@$!#^\-%_*?&]{6,}"))))
(check-sat)
