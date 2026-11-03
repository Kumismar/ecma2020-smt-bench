; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^(05)[0-9][0-9][1-9]([0-9]){6}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z]([a-zA-Z0-9\-]){1,}[a-zA-Z0-9]$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z]([a-zA-Z0-9\-]){1,}[a-zA-Z0-9]$")))))
(check-sat)
