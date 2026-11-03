; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z ]*$") ((_ re.from_regex ecma2020) "[0-9]{6,15}$")) (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z ]*$") (re.comp ((_ re.from_regex ecma2020) "[0-9]{6,15}$")))) (re.diff (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z ]*$") (re.comp ((_ re.from_regex ecma2020) "[0-9]{6,15}$"))) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z ]*$") ((_ re.from_regex ecma2020) "[0-9]{6,15}$"))))))
(check-sat)
