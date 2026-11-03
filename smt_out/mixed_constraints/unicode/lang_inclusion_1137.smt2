; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z\s]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}])+$") ((_ re.from_regex ecma2020 u) "<acro|(?:^([a-zA-Z\s]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}])+$)")) ((_ re.from_regex ecma2020 u) "<acro|(?:^([a-zA-Z\s]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}])+$)"))))
(check-sat)
