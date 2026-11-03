; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: unrelated, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\s]{4,30}") ((_ re.from_regex ecma2020) "^[A-z0-9-\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{d1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]+$")) ((_ re.from_regex ecma2020) "[a-zA-Z\s]{4,30}")))
(check-sat)
