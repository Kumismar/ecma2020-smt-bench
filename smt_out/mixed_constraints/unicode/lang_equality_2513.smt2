; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^BC\d{3,7}|bc\d{3,7}$") ((_ re.from_regex ecma2020 u) "1[3456789]\d{9}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^BC\d{3,7}|bc\d{3,7}$")) (re.comp ((_ re.from_regex ecma2020 u) "1[3456789]\d{9}$"))))))
(check-sat)
