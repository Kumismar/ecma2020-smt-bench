; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z ]{2,254}") ((_ re.from_regex ecma2020) "^\w{5,5}( |-){0,1}\w{0,5}$")) ((_ re.from_regex ecma2020) "[a-zA-Z ]{2,254}")) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z ]{2,254}") ((_ re.from_regex ecma2020) "^\w{5,5}( |-){0,1}\w{0,5}$"))))
(check-sat)
