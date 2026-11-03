; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,30})$") ((_ re.from_regex ecma2020 u) "tion|(?:^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,30})$)")))
(check-sat)
