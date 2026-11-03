; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "[\D0-9]{3,20}") ((_ re.from_regex ecma2020 u) "^AT\d{3,7}|AI\d{3,7}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "[\D0-9]{3,20}")) (re.comp ((_ re.from_regex ecma2020 u) "^AT\d{3,7}|AI\d{3,7}$")))))
(check-sat)
