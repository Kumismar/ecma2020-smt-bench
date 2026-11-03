; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "\+7\s\([0-9]{3}\)\s[0-9]{3}-[0-9]{2}-[0-9]{2}") ((_ re.from_regex ecma2020 u) "avascr|(?:\+7\s\([0-9]{3}\)\s[0-9]{3}-[0-9]{2}-[0-9]{2})")) ((_ re.from_regex ecma2020 u) "avascr|(?:\+7\s\([0-9]{3}\)\s[0-9]{3}-[0-9]{2}-[0-9]{2})"))))
(check-sat)
