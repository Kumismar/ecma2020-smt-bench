; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^(?:[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$)$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$")) ((_ re.from_regex ecma2020) "^(?:[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$)$")))
(check-sat)
