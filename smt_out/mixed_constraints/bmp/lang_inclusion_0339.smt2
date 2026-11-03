; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "(?:^(\w+[-.+&%])*\w+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$)|""true""") ((_ re.from_regex ecma2020) "^(\w+[-.+&%])*\w+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$")) ((_ re.from_regex ecma2020) "(?:^(\w+[-.+&%])*\w+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$)|""true""")))
(check-sat)
