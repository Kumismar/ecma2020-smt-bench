; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9~@#$^/*()_+=<>[\]{}|\\,.?: -]*$") ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,10}$")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9~@#$^/*()_+=<>[\]{}|\\,.?: -]*$")) (re.comp ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,10}$")))))))
(check-sat)
