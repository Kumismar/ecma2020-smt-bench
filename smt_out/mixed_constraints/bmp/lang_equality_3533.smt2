; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "rt\(1|(?:^(?!23|25|26|29|36|39|52|56|57|58|59|72|76|78)[1-9]{2}(?:[2-5]|7|9[1-9])[0-9]{3}[0-9]{4}$)") ((_ re.from_regex ecma2020) "^(?!23|25|26|29|36|39|52|56|57|58|59|72|76|78)[1-9]{2}(?:[2-5]|7|9[1-9])[0-9]{3}[0-9]{4}$"))))
(check-sat)
