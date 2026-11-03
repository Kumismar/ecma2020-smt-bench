; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{430}-\u{44f}\u{410}-\u{42f}'\u{491}\u{454}\u{490}\u{404}\u{406}\u{456}\u{407}\u{457}\s]{2,}") ((_ re.from_regex ecma2020 u) "(?!-)[a-zA-Z0-9-]{1,63}")) (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{430}-\u{44f}\u{410}-\u{42f}'\u{491}\u{454}\u{490}\u{404}\u{406}\u{456}\u{407}\u{457}\s]{2,}") ((_ re.from_regex ecma2020 u) "(?!-)[a-zA-Z0-9-]{1,63}"))))
(check-sat)
