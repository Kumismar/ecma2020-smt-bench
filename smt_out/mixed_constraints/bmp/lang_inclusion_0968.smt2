; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "(^[2-9][0-9]{2}-?[0-9]{3}-?[0-9]{4}$)") ((_ re.from_regex ecma2020) "^[A-Za-z '-]+$")) (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z '-]+$"))) (re.diff ((_ re.from_regex ecma2020) "(^[2-9][0-9]{2}-?[0-9]{3}-?[0-9]{4}$)") ((_ re.from_regex ecma2020) "^[A-Za-z '-]+$"))))
(check-sat)
