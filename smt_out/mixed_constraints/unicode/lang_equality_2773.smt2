; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{3,4}$") ((_ re.from_regex ecma2020 u) "^\w{5}$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\w{5}$") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{3,4}$"))))))
(check-sat)
