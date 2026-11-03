; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$") ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$")) (re.comp ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$")))))
(check-sat)
