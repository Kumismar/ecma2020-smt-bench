; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020 u) "(0[1-9]|1[0-9]|2[0-9]|3[01])") ((_ re.from_regex ecma2020 u) "^[0-9.]{1,12}$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "(0[1-9]|1[0-9]|2[0-9]|3[01])")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9.]{1,12}$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020 u) "(0[1-9]|1[0-9]|2[0-9]|3[01])")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9.]{1,12}$"))) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "(0[1-9]|1[0-9]|2[0-9]|3[01])") ((_ re.from_regex ecma2020 u) "^[0-9.]{1,12}$")))))))
(check-sat)
