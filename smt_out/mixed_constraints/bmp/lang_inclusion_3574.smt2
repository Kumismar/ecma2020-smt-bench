; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[0-9])(?=.*[!@^#%*]).{8,20}$")) (re.comp ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[0-9])(?=.*[!@^#%*]).{8,20}$"))) (re.diff ((_ re.from_regex ecma2020) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[0-9])(?=.*[!@^#%*]).{8,20}$"))))
(check-sat)
