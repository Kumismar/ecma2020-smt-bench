; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^([\u{430}-\u{44f}\u{410}-\u{42f}\s\-]+[\u{430}-\u{44f}\u{410}-\u{42f}\s\.\-]+){1,30}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{6,50}")) (re.inter ((_ re.from_regex ecma2020) "^([\u{430}-\u{44f}\u{410}-\u{42f}\s\-]+[\u{430}-\u{44f}\u{410}-\u{42f}\s\.\-]+){1,30}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{6,50}")))))
(check-sat)
