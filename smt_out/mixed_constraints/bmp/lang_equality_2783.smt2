; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(0[1-9]|1[012])[\/](0[1-9]|(1|2)[0-9]|3[01])[\/](19|20)\d\d$") ((_ re.from_regex ecma2020) "14")) (re.union ((_ re.from_regex ecma2020) "14") ((_ re.from_regex ecma2020) "(0[1-9]|1[012])[\/](0[1-9]|(1|2)[0-9]|3[01])[\/](19|20)\d\d$")))))
(check-sat)
