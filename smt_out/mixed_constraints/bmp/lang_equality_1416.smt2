; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^\(?([2-9][0-8][0-9])\)?[\-\. ]?([2-9][0-9]{2})[\-\. ]?([0-9]{4})(\s*x[0-9]+)?$") ((_ re.from_regex ecma2020) "(?=(([0-9]+[^0-9]+)|([a-zA-Z]+[^a-zA-Z]+)|([@._\-]+[^@._\-]+)))[a-zA-Z0-9.@_\-]{8,50}|[0-9]{8}|[0-9]{10}"))))
(check-sat)
