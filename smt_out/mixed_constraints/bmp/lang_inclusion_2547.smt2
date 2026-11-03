; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^([a-z0-9_\.+-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$") ((_ re.from_regex ecma2020) "^[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z0-9]{2,4})$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^([a-z0-9_\.+-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$"))))
(check-sat)
