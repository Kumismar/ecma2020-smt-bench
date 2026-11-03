; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^([a-zA-Z1-9]\w*|0[A-Za-z1-9]\w*|00[a-zA-Z1-9]\w*)$") ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,2}\d{1,2}[A-Za-z]{0,1}\s*\d{0,1}[A-Za-z]{2}_{0,2}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,2}\d{1,2}[A-Za-z]{0,1}\s*\d{0,1}[A-Za-z]{2}_{0,2}$"))) (re.diff ((_ re.from_regex ecma2020 u) "^([a-zA-Z1-9]\w*|0[A-Za-z1-9]\w*|00[a-zA-Z1-9]\w*)$") ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,2}\d{1,2}[A-Za-z]{0,1}\s*\d{0,1}[A-Za-z]{2}_{0,2}$"))))
(check-sat)
