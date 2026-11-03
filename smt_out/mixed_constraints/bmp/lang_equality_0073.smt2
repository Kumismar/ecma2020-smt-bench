; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "(?:^[A-Za-z\u{d1}\u{f1}\u{c1}\u{e1}\u{c9}\u{e9}\u{cd}\u{ed}\u{d3}\u{f3}\u{da}\u{fa}\s]+$)(?:ert\(1\))?") ((_ re.from_regex ecma2020) "^[A-Za-z\u{d1}\u{f1}\u{c1}\u{e1}\u{c9}\u{e9}\u{cd}\u{ed}\u{d3}\u{f3}\u{da}\u{fa}\s]+$")))
(check-sat)
