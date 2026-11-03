; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.inter ((_ re.from_regex ecma2020) "((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)") ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z-]+$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)")) (re.comp ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z-]+$")))))
(check-sat)
