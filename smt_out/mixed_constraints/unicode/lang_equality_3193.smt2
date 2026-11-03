; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "^1[3|4|5|8][0-9]\d{8}$") ((_ re.from_regex ecma2020 u) "(?:^1[3|4|5|8][0-9]\d{8}$)(?:had)?")))
(check-sat)
