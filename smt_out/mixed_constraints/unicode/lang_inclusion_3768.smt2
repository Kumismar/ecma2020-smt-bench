; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "[0-9\u{c6}\u{d8}\u{c5}\u{e6}\u{f8}\u{e5}\u{dc}\u{fc}\u{d6}\u{f6}\u{c4}\u{e4}a-zA-Z+-_@./)(!#&%  ]{2,999}") ((_ re.from_regex ecma2020 u) "^(?:[0-9\u{c6}\u{d8}\u{c5}\u{e6}\u{f8}\u{e5}\u{dc}\u{fc}\u{d6}\u{f6}\u{c4}\u{e4}a-zA-Z+-_@./)(!#&%  ]{2,999})$")) ((_ re.from_regex ecma2020 u) "[0-9\u{c6}\u{d8}\u{c5}\u{e6}\u{f8}\u{e5}\u{dc}\u{fc}\u{d6}\u{f6}\u{c4}\u{e4}a-zA-Z+-_@./)(!#&%  ]{2,999}")))
(check-sat)
