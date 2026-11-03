; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "lect=""|(?:^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$)") ((_ re.from_regex ecma2020) "^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$")))
(check-sat)
