; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}\s]+$") ((_ re.from_regex ecma2020) "([0-9]{5})$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}\s]+$")) (re.comp ((_ re.from_regex ecma2020) "([0-9]{5})$"))))))
(check-sat)
