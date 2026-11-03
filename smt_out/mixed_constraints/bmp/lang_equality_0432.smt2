; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "(?:^[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$).*") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$")))
(check-sat)
