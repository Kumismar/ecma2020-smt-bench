; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: repeated, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[\u{5c}u2015\u{5c}u3000\u{5c}u3041-\u{5c}u3093\u{5c}u309B-\u{5c}u309E\u{5c}u30FC]+$") ((_ re.from_regex ecma2020 u) "(?:^[\u{5c}u2015\u{5c}u3000\u{5c}u3041-\u{5c}u3093\u{5c}u309B-\u{5c}u309E\u{5c}u30FC]+$)+")) ((_ re.from_regex ecma2020 u) "(?:^[\u{5c}u2015\u{5c}u3000\u{5c}u3041-\u{5c}u3093\u{5c}u309B-\u{5c}u309E\u{5c}u30FC]+$)+"))))
(check-sat)
