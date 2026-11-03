; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,10}") ((_ re.from_regex ecma2020 u) "\(1\)(?:(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,10})")))
(check-sat)
