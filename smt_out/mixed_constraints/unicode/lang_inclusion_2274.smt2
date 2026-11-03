; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^0\d{1,2}-?\d{4}-?\d{4}$") ((_ re.from_regex ecma2020 u) "so|(?:^0\d{1,2}-?\d{4}-?\d{4}$)")) ((_ re.from_regex ecma2020 u) "^0\d{1,2}-?\d{4}-?\d{4}$")))
(check-sat)
