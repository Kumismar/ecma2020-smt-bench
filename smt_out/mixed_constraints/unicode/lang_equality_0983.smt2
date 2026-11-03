; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "s on(?:^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$)") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$") ((_ re.from_regex ecma2020 u) "s on(?:^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$)")))))
(check-sat)
