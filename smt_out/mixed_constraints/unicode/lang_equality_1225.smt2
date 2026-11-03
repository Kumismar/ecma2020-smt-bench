; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[ \u{3000}\u{3041}-\u{3096}\u{309d}\u{309e}\u{30fc}]+$") ((_ re.from_regex ecma2020 u) "[1|2][0-9]{3}")) (re.union ((_ re.from_regex ecma2020 u) "[1|2][0-9]{3}") ((_ re.from_regex ecma2020 u) "^[ \u{3000}\u{3041}-\u{3096}\u{309d}\u{309e}\u{30fc}]+$")))))
(check-sat)
