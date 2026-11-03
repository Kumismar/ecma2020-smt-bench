; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}\s]+$")) (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}\s]+$"))) (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}\s]+$"))))
(check-sat)
