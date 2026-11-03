; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "e>:|(?:^0[1-9]\d{8})") ((_ re.from_regex ecma2020) "^0[1-9]\d{8}"))))
(check-sat)
