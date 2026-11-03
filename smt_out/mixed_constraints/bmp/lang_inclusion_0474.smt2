; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_prefix, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) ".*(?:^[0-9a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{d1}]{2,30}$)") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{d1}]{2,30}$")) ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{d1}]{2,30}$")))
(check-sat)
