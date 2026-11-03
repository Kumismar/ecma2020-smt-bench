; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^([A-z. \u{e1}\u{c1}\u{e9}\u{c9}\u{f3}\u{d3}\u{f6}\u{d6}\u{151}\u{150}\u{fa}\u{da}\u{fc}\u{dc}\u{171}\u{170}]){3,}$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{30a1}-\u{30fc}])[\u{30a1}-\u{30fc}s]*")) (re.inter ((_ re.from_regex ecma2020 u) "(?=.*?[\u{30a1}-\u{30fc}])[\u{30a1}-\u{30fc}s]*") ((_ re.from_regex ecma2020 u) "^([A-z. \u{e1}\u{c1}\u{e9}\u{c9}\u{f3}\u{d3}\u{f6}\u{d6}\u{151}\u{150}\u{fa}\u{da}\u{fc}\u{dc}\u{171}\u{170}]){3,}$")))))
(check-sat)
