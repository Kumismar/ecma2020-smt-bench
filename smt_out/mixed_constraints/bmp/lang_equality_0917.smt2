; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9._+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,20}$") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_.]{1,20}$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9._+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,20}$")) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_.]{1,20}$"))))))
(check-sat)
