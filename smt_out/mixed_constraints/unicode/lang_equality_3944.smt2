; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^0?1[3|4|5|6|7|8][0-9]\d{8}") ((_ re.from_regex ecma2020 u) "^[A-Z]{1,2}\d[A-Z\d]? \d[ABD-HJLNP-UW-Z]{2}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^0?1[3|4|5|6|7|8][0-9]\d{8}")) (re.comp ((_ re.from_regex ecma2020 u) "^[A-Z]{1,2}\d[A-Z\d]? \d[ABD-HJLNP-UW-Z]{2}$")))))
(check-sat)
