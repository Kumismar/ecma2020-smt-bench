; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^.+@.+\..{2,}$") ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^.+@.+\..{2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020 u) "^.+@.+\..{2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$"))) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^.+@.+\..{2,}$") ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$")))))))
(check-sat)
