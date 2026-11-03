; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: unrelated, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020) "\w+(\s+\w+)+") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z]{5,5}")) ((_ re.from_regex ecma2020) "^[0-9a-zA-Z]{5,5}")))
(check-sat)
