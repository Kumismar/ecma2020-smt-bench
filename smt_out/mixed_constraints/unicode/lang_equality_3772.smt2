; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "[A-z0-9._%+-]+@[A-z0-9.-]+\.[A-z]{2,3}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\- \/]{1,29}$")) (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\- \/]{1,29}$") ((_ re.from_regex ecma2020 u) "[A-z0-9._%+-]+@[A-z0-9.-]+\.[A-z]{2,3}$"))))
(check-sat)
