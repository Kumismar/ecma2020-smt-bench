; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020) "^[^@<>\t\r\n]+$") ((_ re.from_regex ecma2020) "^([a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}]+\s*)+$")) (re.diff ((_ re.from_regex ecma2020) "^([a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}]+\s*)+$") ((_ re.from_regex ecma2020) "^[^@<>\t\r\n]+$"))) (re.diff (re.diff ((_ re.from_regex ecma2020) "^([a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}]+\s*)+$") ((_ re.from_regex ecma2020) "^[^@<>\t\r\n]+$")) (re.diff ((_ re.from_regex ecma2020) "^[^@<>\t\r\n]+$") ((_ re.from_regex ecma2020) "^([a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}]+\s*)+$"))))))
(check-sat)
