; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "^[+]?[0-9-\s()]*$")) (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^[+]?[0-9-\s()]*$)(?:tente)?")))))
(check-sat)
