; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.union ((_ re.from_regex ecma2020) "([0-9a-zA-Z]*)") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9]+[.a-zA-Z0-9]*$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "([0-9a-zA-Z]*)")) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9]+[.a-zA-Z0-9]*$"))))))
(check-sat)
