; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z -]+$") ((_ re.from_regex ecma2020 u) "^[0-9]{9,13}$")) (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{9,13}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z -]+$"))))
(check-sat)
