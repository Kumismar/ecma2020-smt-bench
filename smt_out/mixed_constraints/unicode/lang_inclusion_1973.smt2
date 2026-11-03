; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: unrelated, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^\D{3,30}$") ((_ re.from_regex ecma2020 u) "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$")) ((_ re.from_regex ecma2020 u) "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$")))
(check-sat)
