; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^\d{1,7}-\d{2}-\d$") ((_ re.from_regex ecma2020) "^\+?[1-9]\d{1,14}$")) (re.union ((_ re.from_regex ecma2020) "^\+?[1-9]\d{1,14}$") ((_ re.from_regex ecma2020) "^\d{1,7}-\d{2}-\d$")))))
(check-sat)
