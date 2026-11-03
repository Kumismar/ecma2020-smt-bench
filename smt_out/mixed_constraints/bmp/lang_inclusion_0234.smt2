; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z'.\s]{1,90}$") ((_ re.from_regex ecma2020) "^[A-z0-9\+\._-]+\.?[A-z0-9]+@[A-z0-9-]+[A-z0-9]+\.([A-z]{1,6}\.)?[A-z]{2,6}$")) ((_ re.from_regex ecma2020) "^[a-zA-Z'.\s]{1,90}$"))))
(check-sat)
