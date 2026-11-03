; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?:^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$)t\(1\)") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$")) ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$"))))
(check-sat)
