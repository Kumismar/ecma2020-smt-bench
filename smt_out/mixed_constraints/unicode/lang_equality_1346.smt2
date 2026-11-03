; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?:^[0123456789\-]+$)|olgr") ((_ re.from_regex ecma2020 u) "^[0123456789\-]+$"))))
(check-sat)
