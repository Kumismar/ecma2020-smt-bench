; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "eight:|(?:^[@_\u{f6}\u{e4}\u{fc}\u{f6}\u{c4}\u{dc}\u{df}\w\s\.]{3,30}$)") ((_ re.from_regex ecma2020) "^[@_\u{f6}\u{e4}\u{fc}\u{f6}\u{c4}\u{dc}\u{df}\w\s\.]{3,30}$"))))
(check-sat)
