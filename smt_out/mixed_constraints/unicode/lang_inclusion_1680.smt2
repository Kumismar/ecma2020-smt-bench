; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[0-9\s\-+()]+$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9\u{e01}-\u{e5b}.,:\(\)@\-\/\s]{0,1000}$")) ((_ re.from_regex ecma2020 u) "^[0-9\s\-+()]+$"))))
(check-sat)
