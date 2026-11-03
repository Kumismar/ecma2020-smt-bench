; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9' \u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7} -]+$") ((_ re.from_regex ecma2020 u) "^[\-\.0-9A-Z a-z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]{3,}$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9' \u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7} -]+$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9' \u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7} -]+$"))))
(check-sat)
