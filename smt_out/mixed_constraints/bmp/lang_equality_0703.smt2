; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{2,64}") ((_ re.from_regex ecma2020) "^\w+.\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"))))
(check-sat)
