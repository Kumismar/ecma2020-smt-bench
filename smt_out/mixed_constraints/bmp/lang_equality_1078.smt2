; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W]*\s[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W][ \u{410}-\u{42f}\u{430}-\u{44f}\W]*") ((_ re.from_regex ecma2020) "^[1-9][0-9]{9}$")) (re.inter ((_ re.from_regex ecma2020) "^[1-9][0-9]{9}$") ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W]*\s[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W][ \u{410}-\u{42f}\u{430}-\u{44f}\W]*"))))
(check-sat)
