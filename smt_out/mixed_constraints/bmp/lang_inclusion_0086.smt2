; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$") ((_ re.from_regex ecma2020) "sp&del|(?:^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$)")) ((_ re.from_regex ecma2020) "sp&del|(?:^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$)")))
(check-sat)
