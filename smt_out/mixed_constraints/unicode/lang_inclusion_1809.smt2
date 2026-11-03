; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^([1-9][0-9]*)$") ((_ re.from_regex ecma2020 u) "(?:^([1-9][0-9]*)$)|v id=")) ((_ re.from_regex ecma2020 u) "(?:^([1-9][0-9]*)$)|v id=")))
(check-sat)
