; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^ *[^ 0-9]+ [^ 0-9]+.*$") ((_ re.from_regex ecma2020 u) "^P\d{9}\w$|^A\d{9}\w$")) (re.diff ((_ re.from_regex ecma2020 u) "^P\d{9}\w$|^A\d{9}\w$") ((_ re.from_regex ecma2020 u) "^ *[^ 0-9]+ [^ 0-9]+.*$")))))
(check-sat)
