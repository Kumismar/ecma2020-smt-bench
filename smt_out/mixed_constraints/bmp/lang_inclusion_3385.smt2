; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[1990-2020]*$") ((_ re.from_regex ecma2020) "^([\w!#$%&'*+\-\/=?\^`{|}~]+\.)*[\w!#$%&'*+\-\/=?\^`{|}~]+@((((([a-zA-Z0-9]{1}[a-zA-Z0-9\-]{0,62}[a-zA-Z0-9]{1})|[a-zA-Z])\.)+[a-zA-Z]{2,62})|(\d{1,3}\.){3}\d{1,3}(:\d{1,5})?)$"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[1990-2020]*$"))))
(check-sat)
