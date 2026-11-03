; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_prefix, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f3}]+$") ((_ re.from_regex ecma2020) ".*(?:^[\u{3041}-\u{3093}\u{30a1}-\u{30f3}]+$)")) ((_ re.from_regex ecma2020) ".*(?:^[\u{3041}-\u{3093}\u{30a1}-\u{30f3}]+$)"))))
(check-sat)
