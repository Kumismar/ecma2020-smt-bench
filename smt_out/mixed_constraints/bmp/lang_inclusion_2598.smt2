; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.inter ((_ re.from_regex ecma2020) "^\(([0-9\s]){3}\)\s??([0-9\s]){9}$") ((_ re.from_regex ecma2020) "^((?:[a-z]+[0-9_\.-]*)+[a-z0-9_\.-]*)@((?:[a-z0-9]+[\.-]*)+\.[a-z]{2,4})$")) ((_ re.from_regex ecma2020) "^\(([0-9\s]){3}\)\s??([0-9\s]){9}$")) (re.inter ((_ re.from_regex ecma2020) "^\(([0-9\s]){3}\)\s??([0-9\s]){9}$") ((_ re.from_regex ecma2020) "^((?:[a-z]+[0-9_\.-]*)+[a-z0-9_\.-]*)@((?:[a-z0-9]+[\.-]*)+\.[a-z]{2,4})$"))))
(check-sat)
