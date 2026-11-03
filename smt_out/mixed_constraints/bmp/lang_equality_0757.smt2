; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: followed_by_literal, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "[\u{5c}u0020-\u{5c}uFFFF]{4,}") ((_ re.from_regex ecma2020) "(?:[\u{5c}u0020-\u{5c}uFFFF]{4,})nerror")) (re.diff ((_ re.from_regex ecma2020) "(?:[\u{5c}u0020-\u{5c}uFFFF]{4,})nerror") ((_ re.from_regex ecma2020) "[\u{5c}u0020-\u{5c}uFFFF]{4,}")))))
(check-sat)
