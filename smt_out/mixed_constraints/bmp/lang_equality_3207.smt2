; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[- A-Z 0-9 a-z ' , . _ : ; ) (]+$") (re.union ((_ re.from_regex ecma2020) "^[- A-Z 0-9 a-z ' , . _ : ; ) (]+$") ((_ re.from_regex ecma2020) "^\+?[\d\/\s\-]{8,20}$")))) (str.in_re x ((_ re.from_regex ecma2020) "^[- A-Z 0-9 a-z ' , . _ : ; ) (]+$")))))
(check-sat)
