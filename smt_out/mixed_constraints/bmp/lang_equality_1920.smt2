; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) ".*(?:^[0-9a-zA-Z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$)") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$")))
(check-sat)
