; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$") ((_ re.from_regex ecma2020 u) "^[-\w][-\w.]+@{1}[-a-z0-9]+[.]{1}[a-z]{2,7}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[-\w][-\w.]+@{1}[-a-z0-9]+[.]{1}[a-z]{2,7}$")))))
(check-sat)
