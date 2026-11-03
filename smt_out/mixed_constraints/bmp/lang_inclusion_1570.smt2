; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "ipt:|(?:^[^@]+@[^@]+\.[a-zA-Z]{2,6}|^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4}))") ((_ re.from_regex ecma2020) "^[^@]+@[^@]+\.[a-zA-Z]{2,6}|^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})")) ((_ re.from_regex ecma2020) "^[^@]+@[^@]+\.[a-zA-Z]{2,6}|^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})"))))
(check-sat)
