; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{430}-\u{44f}\u{410}-\u{42f}'\u{491}\u{454}\u{490}\u{404}\u{406}\u{456}\u{407}\u{457}\s]{2,}")) (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z\u{430}-\u{44f}\u{410}-\u{42f}'\u{491}\u{454}\u{490}\u{404}\u{406}\u{456}\u{407}\u{457}\s]{2,})+")))))
(check-sat)
