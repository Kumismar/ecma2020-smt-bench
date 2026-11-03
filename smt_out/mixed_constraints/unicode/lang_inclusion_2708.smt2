; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: repeated, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "(?:[A-Za-z\u{c1}\u{c9}\u{cd}\u{d3}\u{d6}\u{150}\u{da}\u{dc}\u{170}\u{e1}\u{e9}\u{ed}\u{f3}\u{f6}\u{151}\u{fa}\u{fc}\u{171}\.\-\s]+)+") ((_ re.from_regex ecma2020 u) "[A-Za-z\u{c1}\u{c9}\u{cd}\u{d3}\u{d6}\u{150}\u{da}\u{dc}\u{170}\u{e1}\u{e9}\u{ed}\u{f3}\u{f6}\u{151}\u{fa}\u{fc}\u{171}\.\-\s]+")) ((_ re.from_regex ecma2020 u) "[A-Za-z\u{c1}\u{c9}\u{cd}\u{d3}\u{d6}\u{150}\u{da}\u{dc}\u{170}\u{e1}\u{e9}\u{ed}\u{f3}\u{f6}\u{151}\u{fa}\u{fc}\u{171}\.\-\s]+"))))
(check-sat)
