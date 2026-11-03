; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\t-\r \x2D0-9A-Z\xA0\u{5c}u1680\u{5c}u2000-\u{5c}u200A\u{5c}u2028\u{5c}u2029\u{5c}u202F\u{5c}u205F\u{5c}u3000\u{5c}uFEFF]{3,10}$") ((_ re.from_regex ecma2020) "^(?=.*\d)(?=.*[\D]).{8,256}$"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(?=.*\d)(?=.*[\D]).{8,256}$") ((_ re.from_regex ecma2020) "^[\t-\r \x2D0-9A-Z\xA0\u{5c}u1680\u{5c}u2000-\u{5c}u200A\u{5c}u2028\u{5c}u2029\u{5c}u202F\u{5c}u205F\u{5c}u3000\u{5c}uFEFF]{3,10}$"))))))
(check-sat)
