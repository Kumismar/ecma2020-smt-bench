; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "^[\u{30a2}-\u{30f3}\u{309b}\u{309c}\u{30a1}-\u{30a9}\u{30e3}-\u{30e7}\u{30fc}\u{300c}\u{300d}\u{3001}]+$")) (str.in_re x ((_ re.from_regex ecma2020) "(?:^[\u{30a2}-\u{30f3}\u{309b}\u{309c}\u{30a1}-\u{30a9}\u{30e3}-\u{30e7}\u{30fc}\u{300c}\u{300d}\u{3001}]+$)|>te\u{1d400}st")))))
(check-sat)
