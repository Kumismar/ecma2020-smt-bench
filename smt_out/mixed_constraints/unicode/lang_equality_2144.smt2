; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^([0-9]){5}") (re.inter ((_ re.from_regex ecma2020 u) "^([0-9]){5}") ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}\s\-\.]{1,40}")))) (str.in_re x ((_ re.from_regex ecma2020 u) "^([0-9]){5}")))))
(check-sat)
