; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$")) (str.in_re x ((_ re.from_regex ecma2020 u) "(?:((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$).*")))))
(check-sat)
