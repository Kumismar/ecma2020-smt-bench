; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "\)"">tes(?:^[0-9\s\(\)\+\-]{1,18}$)") ((_ re.from_regex ecma2020) "^[0-9\s\(\)\+\-]{1,18}$")) ((_ re.from_regex ecma2020) "\)"">tes(?:^[0-9\s\(\)\+\-]{1,18}$)")))
(check-sat)
