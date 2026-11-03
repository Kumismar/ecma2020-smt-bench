; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?:^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$)|ter=""") ((_ re.from_regex ecma2020 u) "^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$"))))
(check-sat)
