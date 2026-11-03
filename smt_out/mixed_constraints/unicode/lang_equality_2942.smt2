; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,}[A-Za-z0-9@#%&* ]*$") ((_ re.from_regex ecma2020 u) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$")) (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,}[A-Za-z0-9@#%&* ]*$") (re.comp ((_ re.from_regex ecma2020 u) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$")))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,}[A-Za-z0-9@#%&* ]*$") (re.comp ((_ re.from_regex ecma2020 u) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$"))) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,}[A-Za-z0-9@#%&* ]*$") ((_ re.from_regex ecma2020 u) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$"))))))
(check-sat)
