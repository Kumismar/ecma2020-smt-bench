; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?=^[1-9][0-9]{3}[\s]{0,1}[A-Za-z]{2}$)test") ((_ re.from_regex ecma2020 u) "^[1-9][0-9]{3}[\s]{0,1}[A-Za-z]{2}$"))))
(check-sat)
