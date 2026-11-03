; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\(?([0-9]{3})\)?[-.\u{25cf}]?([0-9]{3})[-.\u{25cf}]?([0-9]{4})$") ((_ re.from_regex ecma2020) "^[0][12345679][-. ]?\d{2}[-. ]?\d{2}[-. ]?\d{2}[-. ]?\d{2}$$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\(?([0-9]{3})\)?[-.\u{25cf}]?([0-9]{3})[-.\u{25cf}]?([0-9]{4})$") (re.comp ((_ re.from_regex ecma2020) "^[0][12345679][-. ]?\d{2}[-. ]?\d{2}[-. ]?\d{2}[-. ]?\d{2}$$")))))))
(check-sat)
