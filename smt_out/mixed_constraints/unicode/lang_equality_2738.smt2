; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9 ]+") (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9 ]+") ((_ re.from_regex ecma2020 u) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$")))) (str.in_re x ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9 ]+")))))
(check-sat)
