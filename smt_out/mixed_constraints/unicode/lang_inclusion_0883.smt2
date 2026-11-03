; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[_A-z0-9\u{5c}u4e00-\u{5c}u9fa5]{1,}$") ((_ re.from_regex ecma2020 u) "(?:^[_A-z0-9\u{5c}u4e00-\u{5c}u9fa5]{1,}$)(?:apti)?")) ((_ re.from_regex ecma2020 u) "(?:^[_A-z0-9\u{5c}u4e00-\u{5c}u9fa5]{1,}$)(?:apti)?"))))
(check-sat)
