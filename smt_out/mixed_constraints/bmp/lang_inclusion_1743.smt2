; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^(?:^((13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|17[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])$)$") ((_ re.from_regex ecma2020) "^((13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|17[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])$")) ((_ re.from_regex ecma2020) "^(?:^((13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|17[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])$)$")))
(check-sat)
