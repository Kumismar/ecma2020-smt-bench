; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$") ((_ re.from_regex ecma2020 u) "^(\+7|7|8)?[\s\-]?\(?[489][0-9]{2}\)?[\s\-]?[0-9]{3}[\s\-]?[0-9]{2}[\s\-]?[0-9]{2}$"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9](?:[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9-]{0,61}[a-z\u{430}-\u{44f}\u{410}-\u{42f}A-Z0-9])?\.(?:ru|com|org|info|net|\u{440}\u{444})$")))
(check-sat)
