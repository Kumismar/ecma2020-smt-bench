; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "(?:^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$)r ") ((_ re.from_regex ecma2020) "^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$")) ((_ re.from_regex ecma2020) "(?:^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$)r ")))
(check-sat)
