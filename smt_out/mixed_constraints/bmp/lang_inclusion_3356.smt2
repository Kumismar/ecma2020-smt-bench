; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "^(?:[a-zA-Z\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{dd}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fd}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{c3}\u{d1}\u{d5}\u{e3}\u{f1}\u{f5}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff} ]*)$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{dd}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fd}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{c3}\u{d1}\u{d5}\u{e3}\u{f1}\u{f5}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff} ]*"))))
(check-sat)
