; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "t\(|(?:^0\d{1,5}[ -]?\d{1,4}[ -]?\d{3,4}$)") ((_ re.from_regex ecma2020) "^0\d{1,5}[ -]?\d{1,4}[ -]?\d{3,4}$"))))
(check-sat)
