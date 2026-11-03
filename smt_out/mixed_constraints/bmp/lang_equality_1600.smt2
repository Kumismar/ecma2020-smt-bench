; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "nmous(?:[^0-9~!@#$%\^*()_+=\{\}\[\]|\\:;<>?\/]{1,20})") ((_ re.from_regex ecma2020) "[^0-9~!@#$%\^*()_+=\{\}\[\]|\\:;<>?\/]{1,20}"))))
(check-sat)
