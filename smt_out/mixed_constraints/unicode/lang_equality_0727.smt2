; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9 -]*[A-Za-z0-9][A-Za-z0-9 -]*$") ((_ re.from_regex ecma2020 u) "([0-9]11)")) (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9 -]*[A-Za-z0-9][A-Za-z0-9 -]*$") (re.comp ((_ re.from_regex ecma2020 u) "([0-9]11)")))))
(check-sat)
