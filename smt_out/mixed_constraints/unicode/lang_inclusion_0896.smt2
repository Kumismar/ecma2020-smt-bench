; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?:^[_A-Za-z0-9-+.]+([_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*(.[A-Za-z]{2,4}){1,2}$)|ndrag") ((_ re.from_regex ecma2020 u) "^[_A-Za-z0-9-+.]+([_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*(.[A-Za-z]{2,4}){1,2}$")) ((_ re.from_regex ecma2020 u) "(?:^[_A-Za-z0-9-+.]+([_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*(.[A-Za-z]{2,4}){1,2}$)|ndrag")))
(check-sat)
