; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?=.*\d).{2}/(?=.*\d).{2}") ((_ re.from_regex ecma2020 u) "(?:(?=.*\d).{2}/(?=.*\d).{2})|it"))))
(check-sat)
