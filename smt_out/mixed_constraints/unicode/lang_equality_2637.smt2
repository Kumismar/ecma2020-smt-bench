; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^\S[\w-]*") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$")) (re.inter ((_ re.from_regex ecma2020 u) "^\S[\w-]*") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^\S[\w-]*") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$")) (re.union ((_ re.from_regex ecma2020 u) "^\S[\w-]*") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{406}\u{456}\u{407}\u{457}\u{404}\u{454}\s]+$"))))))
(check-sat)
