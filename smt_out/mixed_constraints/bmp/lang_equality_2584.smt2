; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "tele") ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z\u{c4}\u{e4}\u{d6}\u{f6}\u{dc}\u{fc}\u{df}])().{4,}"))) (str.in_re x ((_ re.from_regex ecma2020) "tele")))))
(check-sat)
