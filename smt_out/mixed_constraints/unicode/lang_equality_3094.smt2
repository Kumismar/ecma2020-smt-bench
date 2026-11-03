; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "^((?!Exeno)(?!HenryExeno)(?!Robot).)*$")) (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$") (re.comp ((_ re.from_regex ecma2020 u) "^((?!Exeno)(?!HenryExeno)(?!Robot).)*$")))))
(check-sat)
