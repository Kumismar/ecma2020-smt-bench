; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[56789].+[0-9]+") ((_ re.from_regex ecma2020 u) "^[9|8|7|6]\d{8}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[9|8|7|6]\d{8}$"))) (re.diff ((_ re.from_regex ecma2020 u) "^[56789].+[0-9]+") ((_ re.from_regex ecma2020 u) "^[9|8|7|6]\d{8}$"))))
(check-sat)
