; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[2-9][0-9]{2}[- ]?\d{3}[- ]?\d{4}$") ((_ re.from_regex ecma2020 u) "^[- 0-9A-Za-z|\u{2122} ]+$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[- 0-9A-Za-z|\u{2122} ]+$") ((_ re.from_regex ecma2020 u) "^[2-9][0-9]{2}[- ]?\d{3}[- ]?\d{4}$"))))))
(check-sat)
