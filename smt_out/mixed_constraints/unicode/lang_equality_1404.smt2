; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "(?:^(0|\+33)[1-9]([-.\u{a0}]?[0-9]{2}){4}$)+") ((_ re.from_regex ecma2020 u) "^(0|\+33)[1-9]([-.\u{a0}]?[0-9]{2}){4}$")) (re.diff ((_ re.from_regex ecma2020 u) "^(0|\+33)[1-9]([-.\u{a0}]?[0-9]{2}){4}$") ((_ re.from_regex ecma2020 u) "(?:^(0|\+33)[1-9]([-.\u{a0}]?[0-9]{2}){4}$)+")))))
(check-sat)
