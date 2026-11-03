; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$") (re.inter ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$") ((_ re.from_regex ecma2020) "^(00?|\+?)(\d{2,3})?\d{9}$"))) ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$")) (re.diff ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$") (re.union ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$") (re.inter ((_ re.from_regex ecma2020) "^([0-9]{4})-([0-9]{4})-([0-9]{4})$") ((_ re.from_regex ecma2020) "^(00?|\+?)(\d{2,3})?\d{9}$")))))))
(check-sat)
