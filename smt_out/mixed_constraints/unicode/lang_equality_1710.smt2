; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_after_lookahead, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "[\u{e6}\u{f8}\u{e5}a-z\u{c6}\u{d8}\u{c5}A-Z0-9 ]{2,7}") ((_ re.from_regex ecma2020 u) "(?=[\u{e6}\u{f8}\u{e5}a-z\u{c6}\u{d8}\u{c5}A-Z0-9 ]{2,7})\)"""))))
(check-sat)
