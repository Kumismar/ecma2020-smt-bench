; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.+-]+[@][a-zA-Z0-9.-]+$") ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5]+$")) (re.union ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5]+$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.+-]+[@][a-zA-Z0-9.-]+$")))))
(check-sat)
