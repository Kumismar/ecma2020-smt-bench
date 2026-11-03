; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)[0-9]{2}") ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)[0-9]{2}")) (re.comp ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$")))))
(check-sat)
