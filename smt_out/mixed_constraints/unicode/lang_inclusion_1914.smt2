; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_inter, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "[.0-9]{1,7}")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[.0-9]{1,7}") ((_ re.from_regex ecma2020 u) "^(\+36\s)|^(\+36\s20\s/\s\d{3}-\d{4})|(\+36\s30\s/\s\d{3}-\d{4})|(\+36\s31\s/\s\d{3}-\d{4})|(\+36\s70\s/\s\d{3}-\d{4})|(\+36\s1\s/\s\d{3}-\d{4})|(\+36\s((?!20)(?!30)(?!31)(?!70)\d{2})\s/\s\d{3}-\d{3})$")))))
(check-sat)
