; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^((\\+91-?)|0)?[0-9]{10}$") ((_ re.from_regex ecma2020) "(?:^((\\+91-?)|0)?[0-9]{10}$)(?:g me<)?")) ((_ re.from_regex ecma2020) "(?:^((\\+91-?)|0)?[0-9]{10}$)(?:g me<)?"))))
(check-sat)
