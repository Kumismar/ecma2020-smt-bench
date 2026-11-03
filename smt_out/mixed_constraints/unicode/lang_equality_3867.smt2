; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^([1-8]{1}\d{2}){1}$") ((_ re.from_regex ecma2020 u) "^[0-9]{1,}$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^([1-8]{1}\d{2}){1}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{1,}$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020 u) "^([1-8]{1}\d{2}){1}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{1,}$"))) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^([1-8]{1}\d{2}){1}$") ((_ re.from_regex ecma2020 u) "^[0-9]{1,}$")))))))
(check-sat)
