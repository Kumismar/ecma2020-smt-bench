; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?:^\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$)|ess") ((_ re.from_regex ecma2020 u) "^\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"))))
(check-sat)
