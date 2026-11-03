; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|16[67]|17[2345678]|18[0-9]|14[57]|19[1589])[0-9]{8}$") ((_ re.from_regex ecma2020) "(?:^(0|86|17951)?(13[0-9]|15[012356789]|16[67]|17[2345678]|18[0-9]|14[57]|19[1589])[0-9]{8}$).*")))
(check-sat)
