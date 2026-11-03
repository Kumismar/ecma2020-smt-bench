; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "ue"" |(?:^P\d{9}\w$|^A\d{9}\w$)") ((_ re.from_regex ecma2020) "^P\d{9}\w$|^A\d{9}\w$")))
(check-sat)
