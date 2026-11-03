; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020 u) ".*(?:^[a-zA-Z ,.-]+$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z ,.-]+$"))))
(check-sat)
