; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_prefix, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/(19|20)\d\d") ((_ re.from_regex ecma2020 u) ".*(?:(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/(19|20)\d\d)"))))
(check-sat)
