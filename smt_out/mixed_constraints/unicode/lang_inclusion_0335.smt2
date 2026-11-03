; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "^\w{6}-.*$") ((_ re.from_regex ecma2020 u) "^(0?[1-9]|1[012])[/-]?(0?[1-9]|[12][0-9]|3[01])[/-]?(\d{4})$")) ((_ re.from_regex ecma2020 u) "^\w{6}-.*$")) ((_ re.from_regex ecma2020 u) "^\w{6}-.*$"))))
(check-sat)
