; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30fc}\u{3000} \r\n\t]+$") ((_ re.from_regex ecma2020) "[A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}") ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30fc}\u{3000} \r\n\t]+$"))))))
(check-sat)
