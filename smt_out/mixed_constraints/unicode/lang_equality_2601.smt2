; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(?:[1-9]|\d\d\d*)$") ((_ re.from_regex ecma2020 u) "[- \.a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}0-9]{3,}"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[- \.a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\u{e1}\u{e0}\u{e9}\u{e8}\u{ed}\u{ec}\u{f3}\u{f2}\u{fa}\u{f9}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}0-9]{3,}") ((_ re.from_regex ecma2020 u) "^(?:[1-9]|\d\d\d*)$"))))))
(check-sat)
