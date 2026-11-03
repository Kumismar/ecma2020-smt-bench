; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "nclick(?:([A-z\u{c0}-\u{17e}\s]){0,})")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "([A-z\u{c0}-\u{17e}\s]){0,}"))))
(check-sat)
