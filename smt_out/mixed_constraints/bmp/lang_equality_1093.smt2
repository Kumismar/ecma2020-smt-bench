; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "[A-Z]{5}[0-9]{4}[A-Z]{1}") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")) (re.union ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$") ((_ re.from_regex ecma2020) "[A-Z]{5}[0-9]{4}[A-Z]{1}")))))
(check-sat)
