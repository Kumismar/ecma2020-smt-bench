; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.union ((_ re.from_regex ecma2020) "^.+@\S+\.\S+$") ((_ re.from_regex ecma2020) "^DE\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{2}|DE\d{20}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^.+@\S+\.\S+$")) (re.comp ((_ re.from_regex ecma2020) "^DE\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{2}|DE\d{20}$"))))))
(check-sat)
