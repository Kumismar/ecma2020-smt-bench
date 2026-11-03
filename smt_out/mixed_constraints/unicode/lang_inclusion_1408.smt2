; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "((\d{5}))") ((_ re.from_regex ecma2020 u) "[a-z0-9._]{3,10}$"))))
(assert (not (str.in_re x (re.comp ((_ re.from_regex ecma2020 u) "[a-z0-9._]{3,10}$")))))
(check-sat)
