; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020) "^[A-Z].[A-Za-z\-\s']+$") ((_ re.from_regex ecma2020) "^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]*$")) (re.comp ((_ re.from_regex ecma2020) "^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]*$"))) (re.comp ((_ re.from_regex ecma2020) "^[\sA-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]*$")))))
(check-sat)
