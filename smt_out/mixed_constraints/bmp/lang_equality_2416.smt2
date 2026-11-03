; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020) "[- \.a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}0-9]{2,}") ((_ re.from_regex ecma2020) "[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3}$")) (re.inter ((_ re.from_regex ecma2020) "[- \.a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}0-9]{2,}") ((_ re.from_regex ecma2020) "[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,3}$"))))
(check-sat)
