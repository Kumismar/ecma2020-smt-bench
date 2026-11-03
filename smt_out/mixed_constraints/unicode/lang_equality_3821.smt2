; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[KF]?[0-9]{6,7}$") ((_ re.from_regex ecma2020 u) "[A-Z|a-z|\s-]{0,255}")) (re.diff ((_ re.from_regex ecma2020 u) "[A-Z|a-z|\s-]{0,255}") ((_ re.from_regex ecma2020 u) "^[KF]?[0-9]{6,7}$"))) (re.diff (re.diff ((_ re.from_regex ecma2020 u) "[A-Z|a-z|\s-]{0,255}") ((_ re.from_regex ecma2020 u) "^[KF]?[0-9]{6,7}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[KF]?[0-9]{6,7}$") ((_ re.from_regex ecma2020 u) "[A-Z|a-z|\s-]{0,255}"))))))
(check-sat)
