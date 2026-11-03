; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "(?:^([a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]{3,30})*$)(?:ati)?") ((_ re.from_regex ecma2020 u) "^([a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]{3,30})*$")))
(check-sat)
