; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\s]*") ((_ re.from_regex ecma2020 u) """>(?:[a-zA-Z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\s]*)")))
(check-sat)
