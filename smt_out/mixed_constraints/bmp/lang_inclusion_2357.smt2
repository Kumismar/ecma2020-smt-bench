; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "(?=^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$)-im") ((_ re.from_regex ecma2020) "^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$")) ((_ re.from_regex ecma2020) "^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$")))
(check-sat)
