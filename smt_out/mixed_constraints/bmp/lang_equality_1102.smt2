; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$") ((_ re.from_regex ecma2020) "[0-9]{8,9}$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[0-9]{8,9}$") ((_ re.from_regex ecma2020) "(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$"))))))
(check-sat)
