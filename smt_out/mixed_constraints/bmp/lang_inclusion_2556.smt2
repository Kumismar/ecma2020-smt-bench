; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[0-9()+\s]{9,25}$") ((_ re.from_regex ecma2020) "^(\+36\s)|^(\+36\s20\s/\s\d{3}-\d{4})|(\+36\s30\s/\s\d{3}-\d{4})|(\+36\s31\s/\s\d{3}-\d{4})|(\+36\s70\s/\s\d{3}-\d{4})|(\+36\s1\s/\s\d{3}-\d{4})|(\+36\s((?!20)(?!30)(?!31)(?!70)\d{2})\s/\s\d{3}-\d{3})$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[0-9()+\s]{9,25}$"))))
(check-sat)
