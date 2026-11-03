; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]{2,}){1,1}$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._*?%+-]{6,30}$")) (re.comp ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._*?%+-]{6,30}$"))) (re.diff ((_ re.from_regex ecma2020 u) "^@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]{2,}){1,1}$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._*?%+-]{6,30}$"))))
(check-sat)
