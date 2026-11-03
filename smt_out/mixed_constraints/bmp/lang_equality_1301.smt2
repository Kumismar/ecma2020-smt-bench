; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) ".*(?:^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-\.]{0,70})$)") ((_ re.from_regex ecma2020) "^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-\.]{0,70})$")))
(check-sat)
