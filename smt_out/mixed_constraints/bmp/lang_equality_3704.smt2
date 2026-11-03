; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9\-]+)\.(([a-zA-Z]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,}\.[a-zA-Z]{2,}))$") ((_ re.from_regex ecma2020) "[\x21-\x7E]{1,2}"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9\-]+)\.(([a-zA-Z]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,}\.[a-zA-Z]{2,}))$")) (re.comp ((_ re.from_regex ecma2020) "[\x21-\x7E]{1,2}"))))))
(check-sat)
