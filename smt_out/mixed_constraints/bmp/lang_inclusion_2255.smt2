; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}\u{c1}\u{c2}\u{c3}\u{c4}\u{c5}\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e5}\u{d2}\u{d3}\u{d4}\u{d5}\u{d6}\u{d8}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f8}\u{c8}\u{c9}\u{ca}\u{cb}\u{e8}\u{e9}\u{ea}\u{eb}\u{c7}\u{e7}\u{cc}\u{cd}\u{ce}\u{cf}\u{ec}\u{ed}\u{ee}\u{ef}\u{d9}\u{da}\u{db}\u{dc}\u{f9}\u{fa}\u{fb}\u{fc}\u{ff}\u{d1}\u{f1}\\'\-\s]+") (re.union ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}\u{c1}\u{c2}\u{c3}\u{c4}\u{c5}\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e5}\u{d2}\u{d3}\u{d4}\u{d5}\u{d6}\u{d8}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f8}\u{c8}\u{c9}\u{ca}\u{cb}\u{e8}\u{e9}\u{ea}\u{eb}\u{c7}\u{e7}\u{cc}\u{cd}\u{ce}\u{cf}\u{ec}\u{ed}\u{ee}\u{ef}\u{d9}\u{da}\u{db}\u{dc}\u{f9}\u{fa}\u{fb}\u{fc}\u{ff}\u{d1}\u{f1}\\'\-\s]+") ((_ re.from_regex ecma2020) "([\w\s])*([0-9])+(\s)+([\w])+")))))
(check-sat)
