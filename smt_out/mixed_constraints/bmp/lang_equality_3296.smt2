; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^[-0-9]{1,}$") ((_ re.from_regex ecma2020) "ex|(?:^[-0-9]{1,}$)")) (re.diff ((_ re.from_regex ecma2020) "ex|(?:^[-0-9]{1,}$)") ((_ re.from_regex ecma2020) "^[-0-9]{1,}$")))))
(check-sat)
