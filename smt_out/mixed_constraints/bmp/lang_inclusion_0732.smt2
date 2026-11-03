; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$") ((_ re.from_regex ecma2020) "t onk|(?:^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$)")) ((_ re.from_regex ecma2020) "t onk|(?:^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$)")))
(check-sat)
