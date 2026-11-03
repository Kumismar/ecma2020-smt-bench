; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^1[3|4|5|8][0-9]\d{4,8}$") ((_ re.from_regex ecma2020 u) "[\u{f6}\u{fc}\u{e4}\u{d6}\u{c4}\u{dc}\u{e8}\u{e9}\u{e0}\u{c0}\u{c9}\u{c8}a-zA-Z\-'\s]+"))))
(check-sat)
