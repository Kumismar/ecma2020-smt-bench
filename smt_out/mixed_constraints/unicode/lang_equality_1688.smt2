; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[1-9][0-9]{1,5}") ((_ re.from_regex ecma2020 u) "alpha_numeric_punc"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[1-9][0-9]{1,5}")) (re.comp ((_ re.from_regex ecma2020 u) "alpha_numeric_punc"))))))
(check-sat)
