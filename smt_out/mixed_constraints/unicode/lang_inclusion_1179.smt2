; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "x=|(?:^[a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178} ]*$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178} ]*$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178} ]*$")))
(check-sat)
