; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{f1}\u{d1} _]*[A-Za-z0-9\u{f1}\u{d1}][A-Za-z0-9\u{f1}\u{d1} _]*$")) (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{f1}\u{d1} _]*[A-Za-z0-9\u{f1}\u{d1}][A-Za-z0-9\u{f1}\u{d1} _]*$") ((_ re.from_regex ecma2020 u) "^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$")))))
(check-sat)
