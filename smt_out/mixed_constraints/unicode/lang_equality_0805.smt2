; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^(?:(?!^\s+$)[A-z\u{c0}-\u{17e}0-9()\s\-\.]{1,40})$") ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}0-9()\s\-\.]{1,40}")) (re.diff ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}0-9()\s\-\.]{1,40}") ((_ re.from_regex ecma2020 u) "^(?:(?!^\s+$)[A-z\u{c0}-\u{17e}0-9()\s\-\.]{1,40})$")))))
(check-sat)
