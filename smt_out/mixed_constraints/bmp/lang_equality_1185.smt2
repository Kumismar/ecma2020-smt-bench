; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.union ((_ re.from_regex ecma2020) "((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$") ((_ re.from_regex ecma2020) "^[0-9-+s()]*$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$")) (re.comp ((_ re.from_regex ecma2020) "^[0-9-+s()]*$")))) (re.diff (re.inter (re.comp ((_ re.from_regex ecma2020) "((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$")) (re.comp ((_ re.from_regex ecma2020) "^[0-9-+s()]*$"))) (re.comp (re.union ((_ re.from_regex ecma2020) "((^|$)(0[0-9]{5,9}|3[0-9]{8,9}))$") ((_ re.from_regex ecma2020) "^[0-9-+s()]*$")))))))
(check-sat)
