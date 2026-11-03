; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?:^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$)|\(1\)><") ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$")) ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$"))))
(check-sat)
