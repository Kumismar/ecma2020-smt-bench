; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "ss(?:^[a-zA-Z\u{e1}\u{c1}\u{e9}\u{c9}\u{ed}\u{cd}\u{f3}\u{d3}\u{fa}\u{da}\u{f1}\u{d1} ]{1,50}$)") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e1}\u{c1}\u{e9}\u{c9}\u{ed}\u{cd}\u{f3}\u{d3}\u{fa}\u{da}\u{f1}\u{d1} ]{1,50}$")) ((_ re.from_regex ecma2020) "ss(?:^[a-zA-Z\u{e1}\u{c1}\u{e9}\u{c9}\u{ed}\u{cd}\u{f3}\u{d3}\u{fa}\u{da}\u{f1}\u{d1} ]{1,50}$)")))
(check-sat)
