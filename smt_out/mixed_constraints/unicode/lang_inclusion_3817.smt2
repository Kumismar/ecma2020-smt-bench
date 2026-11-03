; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z0-9 .'-\u{e7}\u{c7}\u{f1}\u{d1}\u{f5}\u{d5}\u{e3}\u{c3}\u{e0}\u{e1}\u{e8}\u{e9}\u{ec}\u{ed}\u{f2}\u{f3}\u{f9}\u{fa}\u{c0}\u{c1}\u{c8}\u{c9}\u{cc}\u{cd}\u{d2}\u{d3}\u{d9}\u{da}&]+$)|\(1\)"">")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9 .'-\u{e7}\u{c7}\u{f1}\u{d1}\u{f5}\u{d5}\u{e3}\u{c3}\u{e0}\u{e1}\u{e8}\u{e9}\u{ec}\u{ed}\u{f2}\u{f3}\u{f9}\u{fa}\u{c0}\u{c1}\u{c8}\u{c9}\u{cc}\u{cd}\u{d2}\u{d3}\u{d9}\u{da}&]+$"))))
(check-sat)
