; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_suffix, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "^([a-zA-Z\u{b4}`\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{f1}\u{d1}.,\s]{5,60})+$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^([a-zA-Z\u{b4}`\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{f1}\u{d1}.,\s]{5,60})+$).*"))))
(check-sat)
