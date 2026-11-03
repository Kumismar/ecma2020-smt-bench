; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "(?!\s+)\D{1,19}\S") ((_ re.from_regex ecma2020) "^(0|\+)\d{2,}[0-9-/\s]*$")) (re.inter ((_ re.from_regex ecma2020) "(?!\s+)\D{1,19}\S") (re.comp ((_ re.from_regex ecma2020) "^(0|\+)\d{2,}[0-9-/\s]*$")))))
(check-sat)
