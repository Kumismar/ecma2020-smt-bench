; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "^[a-zA-Z \u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]+$") ((_ re.from_regex ecma2020) "(?:^[a-zA-Z \u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]+$).*")))
(check-sat)
