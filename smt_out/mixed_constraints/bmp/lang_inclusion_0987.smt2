; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020) "meter |(?:^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$)") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$")) ((_ re.from_regex ecma2020) "^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$")))
(check-sat)
