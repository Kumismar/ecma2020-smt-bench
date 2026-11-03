; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9-\s]+$") ((_ re.from_regex ecma2020) "(?=^[\S]{12,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W).*$")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9-\s]+$")) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9-\s]+$") (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9-\s]+$") ((_ re.from_regex ecma2020) "(?=^[\S]{12,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W).*$"))))))
(check-sat)
