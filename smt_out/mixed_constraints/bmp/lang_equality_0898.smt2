; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) ";\);"";|(?:\d{2,4}-?\d{3,4}-?\d{3,4})") ((_ re.from_regex ecma2020) "\d{2,4}-?\d{3,4}-?\d{3,4}")))
(check-sat)
