; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d\w\W]{8,64}$") ((_ re.from_regex ecma2020 u) "(?:^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d\w\W]{8,64}$)+")))
(check-sat)
