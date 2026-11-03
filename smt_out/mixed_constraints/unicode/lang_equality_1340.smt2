; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@(?!cancaonova.pt)[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$") ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@(?!cancaonova.pt)[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$")) (re.comp ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}")))))))
(check-sat)
