; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "(?:^([0-9a-zA-Z]+[-_+.&0-9a-zA-Z]*)?[-_+0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$)|nt") ((_ re.from_regex ecma2020 u) "^([0-9a-zA-Z]+[-_+.&0-9a-zA-Z]*)?[-_+0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$")) (re.diff ((_ re.from_regex ecma2020 u) "^([0-9a-zA-Z]+[-_+.&0-9a-zA-Z]*)?[-_+0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$") ((_ re.from_regex ecma2020 u) "(?:^([0-9a-zA-Z]+[-_+.&0-9a-zA-Z]*)?[-_+0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$)|nt")))))
(check-sat)
