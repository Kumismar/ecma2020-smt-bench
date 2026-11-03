; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[A-Z]{2,3}_[a-z]+:[0-9]{4}$") ((_ re.from_regex ecma2020 u) "^[a-z0-9](?:[a-z0-9]|[-_](?=[a-z0-9])){0,38}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-z0-9](?:[a-z0-9]|[-_](?=[a-z0-9])){0,38}$"))) (re.comp ((_ re.from_regex ecma2020 u) "^[a-z0-9](?:[a-z0-9]|[-_](?=[a-z0-9])){0,38}$")))))
(check-sat)
