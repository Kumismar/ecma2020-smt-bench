; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^(?:^[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{1,40}(\/[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{0,40})?$)$") ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{1,40}(\/[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{0,40})?$")) ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{1,40}(\/[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{0,40})?$"))))
(check-sat)
