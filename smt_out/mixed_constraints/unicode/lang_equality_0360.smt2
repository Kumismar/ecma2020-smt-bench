; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]+((-|\.|\s)*[_A-z]*(\.)*)*$") ((_ re.from_regex ecma2020 u) "li|(?:^[a-zA-Z0-9]+((-|\.|\s)*[_A-z]*(\.)*)*$)")) (re.diff ((_ re.from_regex ecma2020 u) "li|(?:^[a-zA-Z0-9]+((-|\.|\s)*[_A-z]*(\.)*)*$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]+((-|\.|\s)*[_A-z]*(\.)*)*$")))))
(check-sat)
