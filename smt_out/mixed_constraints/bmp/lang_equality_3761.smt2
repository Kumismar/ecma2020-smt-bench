; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "(?=.*\d).{6,20}")) (str.in_re x ((_ re.from_regex ecma2020) "^1((3|5|7|8){1}\d{1}|70)\d{8}$")))))
(check-sat)
