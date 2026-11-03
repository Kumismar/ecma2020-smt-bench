; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "(?:^[KF]?[0-9]{6,7}$)|rt\(1\)""") ((_ re.from_regex ecma2020) "^[KF]?[0-9]{6,7}$")))
(check-sat)
