; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$") (re.inter ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$") ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u00C0-\u{5c}u017F  -]*$"))) ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$")) (re.diff ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$") (re.union ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$") (re.inter ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30fc}]*$") ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u00C0-\u{5c}u017F  -]*$")))))))
(check-sat)
