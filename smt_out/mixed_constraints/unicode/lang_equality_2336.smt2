; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "sf|(?:^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- ]{1,24}$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- ]{1,24}$")))
(check-sat)
