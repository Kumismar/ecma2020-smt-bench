; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$") (re.inter ((_ re.from_regex ecma2020 u) "^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$") ((_ re.from_regex ecma2020 u) "^[0-9]")))) (str.in_re x ((_ re.from_regex ecma2020 u) "^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$")))))
(check-sat)
