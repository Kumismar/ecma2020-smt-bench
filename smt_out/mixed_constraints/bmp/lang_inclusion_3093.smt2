; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020) "\b[0-9]{3}[a-zA-Z]{2,4}[0-9]{4,5}\b") ((_ re.from_regex ecma2020) "^(\+33[0-9]{1}[0-9]{8})$|^(^0[0-9]{9})$")) (re.comp ((_ re.from_regex ecma2020) "^(\+33[0-9]{1}[0-9]{8})$|^(^0[0-9]{9})$"))) (re.comp ((_ re.from_regex ecma2020) "^(\+33[0-9]{1}[0-9]{8})$|^(^0[0-9]{9})$")))))
(check-sat)
