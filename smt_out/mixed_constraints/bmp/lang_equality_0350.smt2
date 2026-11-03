; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020) "[^!-\-\/:-@\[-_{-~]*") ((_ re.from_regex ecma2020) "^((0?[1-9])|([1-2][0-9])|(3[0-1]))$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "[^!-\-\/:-@\[-_{-~]*")) (re.comp ((_ re.from_regex ecma2020) "^((0?[1-9])|([1-2][0-9])|(3[0-1]))$"))))))
(check-sat)
