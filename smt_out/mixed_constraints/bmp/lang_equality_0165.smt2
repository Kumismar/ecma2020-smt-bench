; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "^[\d+]{12}$") ((_ re.from_regex ecma2020) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$")) (re.inter ((_ re.from_regex ecma2020) "^[\d+]{12}$") (re.comp ((_ re.from_regex ecma2020) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$")))))
(check-sat)
