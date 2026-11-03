; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "(?=^[0-9a-zA-Z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$)k o") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$")) ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$")))
(check-sat)
