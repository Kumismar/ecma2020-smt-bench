; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "tab|(?:^(\+4219\d{8,}))")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^(\+4219\d{8,})"))))
(check-sat)
