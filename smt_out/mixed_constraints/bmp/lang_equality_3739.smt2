; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")) (str.in_re x ((_ re.from_regex ecma2020) "rt(?:[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$)")))))
(check-sat)
