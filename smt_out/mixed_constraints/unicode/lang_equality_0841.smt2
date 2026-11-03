; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(?:.+@.+\..+){1,255}$") ((_ re.from_regex ecma2020 u) "^\d{4}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^(?:.+@.+\..+){1,255}$")) (re.comp ((_ re.from_regex ecma2020 u) "^\d{4}$")))))
(check-sat)
