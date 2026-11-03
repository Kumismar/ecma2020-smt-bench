; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "[0-9\s-]{8,}") ((_ re.from_regex ecma2020) "^([0]{1}[1-9]{1}|[1-9]{1}[0-9]{1})[0-9]{3}$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020) "^([0]{1}[1-9]{1}|[1-9]{1}[0-9]{1})[0-9]{3}$") ((_ re.from_regex ecma2020) "[0-9\s-]{8,}"))))))
(check-sat)
