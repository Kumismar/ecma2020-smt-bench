; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[0-9]{8,10}$") ((_ re.from_regex ecma2020) "[0-9\s-]{5,17}"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[0-9]{8,10}$"))))
(check-sat)
