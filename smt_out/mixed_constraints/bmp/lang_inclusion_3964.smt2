; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "(?:^[a-zA-Z0-9_.+-]+[@][a-zA-Z0-9.-]+$)(?:n:)?") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.+-]+[@][a-zA-Z0-9.-]+$")) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.+-]+[@][a-zA-Z0-9.-]+$")))
(check-sat)
