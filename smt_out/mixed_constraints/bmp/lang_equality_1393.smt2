; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[A-Za-z0-9_-]{1,15}") ((_ re.from_regex ecma2020) "^1[3|5|7|8][0-9]{9}$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^1[3|5|7|8][0-9]{9}$") ((_ re.from_regex ecma2020) "[A-Za-z0-9_-]{1,15}"))))))
(check-sat)
