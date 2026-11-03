; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?=(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b)aste=""") ((_ re.from_regex ecma2020) "(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b")) ((_ re.from_regex ecma2020) "(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b"))))
(check-sat)
