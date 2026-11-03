; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$") ((_ re.from_regex ecma2020) "[0-9]{2}:[0-9]{2}")) (re.inter ((_ re.from_regex ecma2020) "[0-9]{2}:[0-9]{2}") ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$")))))
(check-sat)
