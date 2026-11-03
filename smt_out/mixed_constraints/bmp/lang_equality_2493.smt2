; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.comp ((_ re.from_regex ecma2020) "^.{0,6}$"))) ((_ re.from_regex ecma2020) "^.{0,6}$"))))
(check-sat)
