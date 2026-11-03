; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[^\s]+[-a-zA-Z0-9\s]+([-a-zA-Z0-9]+)*$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,60}$")) ((_ re.from_regex ecma2020 u) "^[^\s]+[-a-zA-Z0-9\s]+([-a-zA-Z0-9]+)*$")) ((_ re.from_regex ecma2020 u) "^[^\s]+[-a-zA-Z0-9\s]+([-a-zA-Z0-9]+)*$"))))
(check-sat)
