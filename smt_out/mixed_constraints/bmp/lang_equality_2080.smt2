; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) ".+@(?!mail\.ru|gmail\.com|aol\.com|yandex\.ru|hotmail\.com|outlook\.com|yahoo\.com).*\..+") ((_ re.from_regex ecma2020) ".{2,4}"))))
(check-sat)
