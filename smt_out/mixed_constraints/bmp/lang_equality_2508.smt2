; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^([A-Z|a-z|0-9](.|_){0,1})+[A-Z|a-z|0-9]@([A-Z|a-z|0-9])+((.){0,1}[A-Z|a-z|0-9]){2}.[a-z]{2,3}$") ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}|\u{3000}| ]+$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020) "^([A-Z|a-z|0-9](.|_){0,1})+[A-Z|a-z|0-9]@([A-Z|a-z|0-9])+((.){0,1}[A-Z|a-z|0-9]){2}.[a-z]{2,3}$")) (re.comp ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}|\u{3000}| ]+$")))))))
(check-sat)
