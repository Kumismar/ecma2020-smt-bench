; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020) "(?:(?=.*[A-Za-z])[A-Za-z\s\.]*)(?:put au)?") ((_ re.from_regex ecma2020) "(?=.*[A-Za-z])[A-Za-z\s\.]*"))))
(check-sat)
