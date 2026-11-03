; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.\-_]+@[a-zA-Z0-9\-]+\.[a-z]+") ((_ re.from_regex ecma2020) "^[^@]{3,}@[^@]{2,}\.[a-z]{2,6}$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.\-_]+@[a-zA-Z0-9\-]+\.[a-z]+") (re.comp ((_ re.from_regex ecma2020) "^[^@]{3,}@[^@]{2,}\.[a-z]{2,6}$")))))
(check-sat)
