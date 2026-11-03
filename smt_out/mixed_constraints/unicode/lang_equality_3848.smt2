; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "(?:^([a-zA-Z1-9]\w*|0[A-Za-z1-9]\w*|00[a-zA-Z1-9]\w*)$).*") ((_ re.from_regex ecma2020 u) "^([a-zA-Z1-9]\w*|0[A-Za-z1-9]\w*|00[a-zA-Z1-9]\w*)$")))
(check-sat)
