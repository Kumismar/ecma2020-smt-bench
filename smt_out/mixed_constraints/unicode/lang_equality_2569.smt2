; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^[-A-Za-z0-9_\u{e8}\u{e9}\u{f2}\u{e0}\u{f9} \s]*$") ((_ re.from_regex ecma2020 u) "(?:^[-A-Za-z0-9_\u{e8}\u{e9}\u{f2}\u{e0}\u{f9} \s]*$)|g onk"))))
(check-sat)
