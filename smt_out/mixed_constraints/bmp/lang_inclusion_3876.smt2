; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{92}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+([\.]{1})[0-9a-zA-Z\._-]+$") ((_ re.from_regex ecma2020) "[A-Za-z0-9 ,\-\.#]{1,255}")) (re.comp ((_ re.from_regex ecma2020) "[A-Za-z0-9 ,\-\.#]{1,255}"))) (re.comp ((_ re.from_regex ecma2020) "[A-Za-z0-9 ,\-\.#]{1,255}"))))
(check-sat)
