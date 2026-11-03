; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9. \u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{e3}\u{f5}\u{e7}\u{c1}\u{c0}\u{c9}\u{c8}\u{cd}\u{cc}\u{d3}\u{d2}\u{da}\u{d9}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{c3}\u{d5}\u{c7}@-]*") ((_ re.from_regex ecma2020) "^\w{11,}$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "[a-zA-Z0-9. \u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{e3}\u{f5}\u{e7}\u{c1}\u{c0}\u{c9}\u{c8}\u{cd}\u{cc}\u{d3}\u{d2}\u{da}\u{d9}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{c3}\u{d5}\u{c7}@-]*"))))
(check-sat)
