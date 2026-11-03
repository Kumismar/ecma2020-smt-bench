; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\s\-]+") ((_ re.from_regex ecma2020) "^[0-9 -]+$")) (re.diff ((_ re.from_regex ecma2020) "^[0-9 -]+$") ((_ re.from_regex ecma2020) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\s\-]+")))))
(check-sat)
