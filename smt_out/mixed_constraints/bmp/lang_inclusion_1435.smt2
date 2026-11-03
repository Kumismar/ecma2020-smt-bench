; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: repeated, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "(?:[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]{2,30})+") ((_ re.from_regex ecma2020) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]{2,30}")) ((_ re.from_regex ecma2020) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]{2,30}")))
(check-sat)
