; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "\(1|(?:(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$)") ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$")) ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$"))))
(check-sat)
