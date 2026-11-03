; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^(?:[a-zA-Z\u{151}\u{150}\u{f6}\u{d6}\u{fc}\u{dc}\u{f3}\u{d3}\u{171}\u{170}\u{e1}\u{c1}\u{ed}\u{e9}\u{c9}\u{fa}\u{da}]{2,}$)$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{151}\u{150}\u{f6}\u{d6}\u{fc}\u{dc}\u{f3}\u{d3}\u{171}\u{170}\u{e1}\u{c1}\u{ed}\u{e9}\u{c9}\u{fa}\u{da}]{2,}$")) ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{151}\u{150}\u{f6}\u{d6}\u{fc}\u{dc}\u{f3}\u{d3}\u{171}\u{170}\u{e1}\u{c1}\u{ed}\u{e9}\u{c9}\u{fa}\u{da}]{2,}$"))))
(check-sat)
