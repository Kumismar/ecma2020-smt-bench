; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^\d{2}-\d{4}-\d{4}$") ((_ re.from_regex ecma2020 u) "^(\+36)([0-9]{8,9})$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^(\+36)([0-9]{8,9})$") ((_ re.from_regex ecma2020 u) "^\d{2}-\d{4}-\d{4}$"))))))
(check-sat)
