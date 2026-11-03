; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^(1[3-9]\d{9})$") ((_ re.from_regex ecma2020 u) "^^([1-zA-Z0-1@.\s]{1,255})$")) (re.union ((_ re.from_regex ecma2020 u) "^^([1-zA-Z0-1@.\s]{1,255})$") ((_ re.from_regex ecma2020 u) "^(1[3-9]\d{9})$"))))
(check-sat)
