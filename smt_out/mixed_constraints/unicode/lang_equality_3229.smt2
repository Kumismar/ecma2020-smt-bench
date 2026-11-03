; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?:^[\u{5c}u2015\u{5c}u3000\u{5c}u3041-\u{5c}u3093\u{5c}u309B-\u{5c}u309E\u{5c}u30FC]+$)(?:1 on)?") ((_ re.from_regex ecma2020 u) "^[\u{5c}u2015\u{5c}u3000\u{5c}u3041-\u{5c}u3093\u{5c}u309B-\u{5c}u309E\u{5c}u30FC]+$"))))
(check-sat)
