; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.union ((_ re.from_regex ecma2020) "^(\d{1,3},(\d{3},)*\d{3}|\d+)$") ((_ re.from_regex ecma2020) "^\d\d\d\d\d(-\d\d\d\d)?$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^(\d{1,3},(\d{3},)*\d{3}|\d+)$")) (re.comp ((_ re.from_regex ecma2020) "^\d\d\d\d\d(-\d\d\d\d)?$"))))))
(check-sat)
