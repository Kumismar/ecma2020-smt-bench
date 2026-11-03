; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$") (re.union ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$") ((_ re.from_regex ecma2020) "^([\w.]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!abc.com)(?!xyz.com)(?!pqr.com)(?!rediffmail.com)(?!live.com)(?!outlook.com)(?!me.com)(?!msn.com)(?!ymail.com)([\w-]+\.)+[\w-]{2,4})?$"))) ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$")))
(check-sat)
