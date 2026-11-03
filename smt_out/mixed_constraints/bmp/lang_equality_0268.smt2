; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "[a-z\u{df}\u{e4}\u{fc}\u{f6}\u{e9}\u{11f}\u{131}\u{15f}\u{e7}A-Z\u{c4}\u{dc}\u{d6}\u{11e}\u{130}\u{15e}\u{c7} -]{1,}") ((_ re.from_regex ecma2020) "([a-zA-Z \-]){2,}")) (re.inter ((_ re.from_regex ecma2020) "([a-zA-Z \-]){2,}") ((_ re.from_regex ecma2020) "[a-z\u{df}\u{e4}\u{fc}\u{f6}\u{e9}\u{11f}\u{131}\u{15f}\u{e7}A-Z\u{c4}\u{dc}\u{d6}\u{11e}\u{130}\u{15e}\u{c7} -]{1,}"))))
(check-sat)
