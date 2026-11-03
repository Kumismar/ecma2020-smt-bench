; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "^\+?[0-9]{8,14}$") ((_ re.from_regex ecma2020) "^[0]{1}[0-9]{2,3}"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^\+?[0-9]{8,14}$")) (re.comp ((_ re.from_regex ecma2020) "^[0]{1}[0-9]{2,3}"))))))
(check-sat)
