; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "(?:[a-z,A-Z, ]{1,30})+")) (str.in_re x ((_ re.from_regex ecma2020) "[a-z,A-Z, ]{1,30}")))))
(check-sat)
