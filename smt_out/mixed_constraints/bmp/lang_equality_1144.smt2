; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9]{6,}") ((_ re.from_regex ecma2020) "(?=(([0-9]+[^0-9]+)|([a-zA-Z]+[^a-zA-Z]+)|([@._\-]+[^@._\-]+)))[a-zA-Z0-9.@_\-]{8,50}|[0-9]{8}|[0-9]{10}")) (re.diff ((_ re.from_regex ecma2020) "(?=(([0-9]+[^0-9]+)|([a-zA-Z]+[^a-zA-Z]+)|([@._\-]+[^@._\-]+)))[a-zA-Z0-9.@_\-]{8,50}|[0-9]{8}|[0-9]{10}") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{6,}")))))
(check-sat)
