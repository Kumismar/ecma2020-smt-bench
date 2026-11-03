; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[0-9]{6}|[0-9]{8}|[0-9]{10}$") ((_ re.from_regex ecma2020 u) "^0\d{1,3}-\d{7,8}(#\d+)?")) ((_ re.from_regex ecma2020 u) "^[0-9]{6}|[0-9]{8}|[0-9]{10}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[0-9]{6}|[0-9]{8}|[0-9]{10}$") ((_ re.from_regex ecma2020 u) "^0\d{1,3}-\d{7,8}(#\d+)?"))))
(check-sat)
