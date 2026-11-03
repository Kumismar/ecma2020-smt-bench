; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020) "^(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,16}$") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,16}$")) (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020) "^(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,16}$")) (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$"))) (re.comp (re.inter ((_ re.from_regex ecma2020) "^(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,16}$") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9][a-zA-Z0-9\-_\.]{2,19})$")))))))
(check-sat)
