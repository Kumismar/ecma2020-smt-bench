; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[0-9]{6,20}") (re.union ((_ re.from_regex ecma2020) "^[0-9]{6,20}") ((_ re.from_regex ecma2020) "([0-9]|0[0-9]|1[0-9]|2[0-3])([.]|:)[0-5][0-9]")))) (str.in_re x ((_ re.from_regex ecma2020) "^[0-9]{6,20}")))))
(check-sat)
