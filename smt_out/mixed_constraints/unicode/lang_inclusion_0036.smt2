; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{5c}u00C0-\u{5c}u017F]+(([',. -][a-zA-Z\u{5c}u00C0-\u{5c}u017F])?[a-zA-Z\u{5c}u00C0-\u{5c}u017F]*)*$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "ext|(?:^[a-zA-Z\u{5c}u00C0-\u{5c}u017F]+(([',. -][a-zA-Z\u{5c}u00C0-\u{5c}u017F])?[a-zA-Z\u{5c}u00C0-\u{5c}u017F]*)*$)"))))
(check-sat)
