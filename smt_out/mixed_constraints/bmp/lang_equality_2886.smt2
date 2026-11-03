; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_after_lookahead, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "(?=^.{2,30})>te") ((_ re.from_regex ecma2020) "^.{2,30}")) (re.diff ((_ re.from_regex ecma2020) "^.{2,30}") ((_ re.from_regex ecma2020) "(?=^.{2,30})>te")))))
(check-sat)
