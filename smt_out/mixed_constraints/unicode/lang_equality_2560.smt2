; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$).*") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$")))
(check-sat)
