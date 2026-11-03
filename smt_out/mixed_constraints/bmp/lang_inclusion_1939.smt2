; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) ".{0,244}") ((_ re.from_regex ecma2020) "[0-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$")) (re.comp ((_ re.from_regex ecma2020) "[0-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"))) (re.diff ((_ re.from_regex ecma2020) ".{0,244}") ((_ re.from_regex ecma2020) "[0-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"))))
(check-sat)
