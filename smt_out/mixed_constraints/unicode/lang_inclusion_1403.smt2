; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]+") ((_ re.from_regex ecma2020 u) "^\d{10,12}$")) ((_ re.from_regex ecma2020 u) "[a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]+")) (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]+") ((_ re.from_regex ecma2020 u) "^\d{10,12}$"))))
(check-sat)
