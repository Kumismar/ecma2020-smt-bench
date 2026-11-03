; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^973([0-9]{8})|[0-9]{8}$") ((_ re.from_regex ecma2020 u) "^[0-9]{3,5}$")) (re.inter ((_ re.from_regex ecma2020 u) "^973([0-9]{8})|[0-9]{8}$") (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{3,5}$")))))
(check-sat)
