; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_prefix, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) ".*(?:[a-zA-Z\u{e7}\u{e7}\u{c7}\u{c7}\u{e3}\u{e3}\u{c3}\u{c3}\u{e9}\u{e9}\u{c9}\u{c9}\u{ed}\u{ed}\u{cd}\u{cd}\u{f3}\u{f3}\u{d3}\u{d3}\u{fa}\u{fa}\u{da}\u{da}\u{e1}\u{e1}\u{c1}\u{c1}\u{e2}\u{e2}\u{c2}\u{c2}\u{ea}\u{ea}\u{ca}\u{ca}\u{f4}\u{f4}\u{d4}\u{d4} ]+$)")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{e7}\u{e7}\u{c7}\u{c7}\u{e3}\u{e3}\u{c3}\u{c3}\u{e9}\u{e9}\u{c9}\u{c9}\u{ed}\u{ed}\u{cd}\u{cd}\u{f3}\u{f3}\u{d3}\u{d3}\u{fa}\u{fa}\u{da}\u{da}\u{e1}\u{e1}\u{c1}\u{c1}\u{e2}\u{e2}\u{c2}\u{c2}\u{ea}\u{ea}\u{ca}\u{ca}\u{f4}\u{f4}\u{d4}\u{d4} ]+$"))))
(check-sat)
