; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[^\._%+-][a-zA-Z0-9._%+-]+[^\._%+-]@[^\._%+-]([a-zA-Z0-9]([.-]?))+[^\._%+-]\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "^([\w\+-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$")) (re.union ((_ re.from_regex ecma2020 u) "^([\w\+-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$") ((_ re.from_regex ecma2020 u) "^[^\._%+-][a-zA-Z0-9._%+-]+[^\._%+-]@[^\._%+-]([a-zA-Z0-9]([.-]?))+[^\._%+-]\.[a-zA-Z]{2,4}$"))))
(check-sat)
