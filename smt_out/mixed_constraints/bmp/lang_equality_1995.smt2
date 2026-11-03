; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020) "(?:[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3}$).*") ((_ re.from_regex ecma2020) "[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3}$"))))
(check-sat)
