; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\-\s]{5,60}$") ((_ re.from_regex ecma2020 u) ".*^\d{2,4}-?\d{2,4}-?\d{4}$.*")) (re.union ((_ re.from_regex ecma2020 u) ".*^\d{2,4}-?\d{2,4}-?\d{4}$.*") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\-\s]{5,60}$"))))
(check-sat)
