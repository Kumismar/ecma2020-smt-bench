; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "ht|(?:^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$)") ((_ re.from_regex ecma2020) "^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$")) (re.diff ((_ re.from_regex ecma2020) "^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$") ((_ re.from_regex ecma2020) "ht|(?:^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$)")))))
(check-sat)
