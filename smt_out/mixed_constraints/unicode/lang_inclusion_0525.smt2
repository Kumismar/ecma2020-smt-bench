; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "test<\/|(?:^[_A-z0-9-_]{1,20}$)") ((_ re.from_regex ecma2020 u) "^[_A-z0-9-_]{1,20}$"))))
(check-sat)
