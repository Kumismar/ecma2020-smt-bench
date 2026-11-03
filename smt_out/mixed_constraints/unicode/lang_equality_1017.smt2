; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[^-].*@\S+\.\S+$") ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z]).{6,}"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^[^-].*@\S+\.\S+$")) (re.comp ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z]).{6,}")))))
(check-sat)
