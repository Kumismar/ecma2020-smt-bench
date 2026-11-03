; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^[0-999999999999]*$") ((_ re.from_regex ecma2020 u) "^[\u{5c}u4E00-\u{5c}u9FA5\u{5c}uf900-\u{5c}ufa2d\u{b7}s]{2,20}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[0-999999999999]*$") (re.comp ((_ re.from_regex ecma2020 u) "^[\u{5c}u4E00-\u{5c}u9FA5\u{5c}uf900-\u{5c}ufa2d\u{b7}s]{2,20}$")))))
(check-sat)
