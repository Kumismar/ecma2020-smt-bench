; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "^[\w\-\.]{5,25}$") ((_ re.from_regex ecma2020) "^\d{2,10}(\s?|[\.]?\d+)*$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^[\w\-\.]{5,25}$")) (re.comp ((_ re.from_regex ecma2020) "^\d{2,10}(\s?|[\.]?\d+)*$")))))
(check-sat)
