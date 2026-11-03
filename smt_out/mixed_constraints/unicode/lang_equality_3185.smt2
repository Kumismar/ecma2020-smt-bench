; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) ".*(?:^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$)")) (str.in_re x ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$")))))
(check-sat)
