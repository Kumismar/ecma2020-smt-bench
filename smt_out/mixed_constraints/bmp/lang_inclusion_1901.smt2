; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[ ]*[^""""<>]{0,50}[ ]*$") ((_ re.from_regex ecma2020) "(^[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])|(^.{4,11})"))))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^[ ]*[^""""<>]{0,50}[ ]*$"))))
(check-sat)
