; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020) ".[0-9]{6,15}") ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-])+$")) ((_ re.from_regex ecma2020) ".[0-9]{6,15}")) ((_ re.from_regex ecma2020) ".[0-9]{6,15}"))))
(check-sat)
