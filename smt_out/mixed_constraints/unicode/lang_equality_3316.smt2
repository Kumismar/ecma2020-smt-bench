; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$") ((_ re.from_regex ecma2020 u) "=""ale|(?:^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$)")))
(check-sat)
