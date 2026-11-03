; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?:^([0-9,\s,\(,\),\-,\/]{1,25})$)|ed><i") ((_ re.from_regex ecma2020 u) "^([0-9,\s,\(,\),\-,\/]{1,25})$")) ((_ re.from_regex ecma2020 u) "(?:^([0-9,\s,\(,\),\-,\/]{1,25})$)|ed><i")))
(check-sat)
