; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020) "(?:^[0-9-+\s()]*$).*") ((_ re.from_regex ecma2020) "^[0-9-+\s()]*$"))))
(check-sat)
