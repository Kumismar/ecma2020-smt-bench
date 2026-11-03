; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) """>test|(?:^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$)") ((_ re.from_regex ecma2020 u) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$")) ((_ re.from_regex ecma2020 u) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$"))))
(check-sat)
