; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020) "^[0-9]{8,10}$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{e5}\u{c5}\s]+")) (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{e5}\u{c5}\s]+"))) (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{e5}\u{c5}\s]+"))))
(check-sat)
