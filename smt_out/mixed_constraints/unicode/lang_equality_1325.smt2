; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$") ((_ re.from_regex ecma2020 u) "^\d{5}(?:[-\s]\d{4})?$")) (re.diff ((_ re.from_regex ecma2020 u) "^\d{5}(?:[-\s]\d{4})?$") ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"))) (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^\d{5}(?:[-\s]\d{4})?$") ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$")) (re.diff ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$") ((_ re.from_regex ecma2020 u) "^\d{5}(?:[-\s]\d{4})?$"))))))
(check-sat)
