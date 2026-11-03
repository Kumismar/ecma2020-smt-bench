; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "[0-9A-Za-z-]{11}") ((_ re.from_regex ecma2020) "(^[a-z0-9._%+-]+)@([a-z0-9-])+(\.)([a-z]{2,4})")) (re.diff ((_ re.from_regex ecma2020) "(^[a-z0-9._%+-]+)@([a-z0-9-])+(\.)([a-z]{2,4})") ((_ re.from_regex ecma2020) "[0-9A-Za-z-]{11}")))))
(check-sat)
