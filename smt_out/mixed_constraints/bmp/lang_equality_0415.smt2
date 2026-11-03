; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z. ]*$") ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z. ]*$")) (re.comp ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+$"))))))
(check-sat)
