; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "^(?:^1{0,1}(\(\d{3}\)\d{3}-\d{4}|\d{10}))$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "^1{0,1}(\(\d{3}\)\d{3}-\d{4}|\d{10})"))))
(check-sat)
