; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "r='pro|(?:^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$)") ((_ re.from_regex ecma2020 u) "^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$")) ((_ re.from_regex ecma2020 u) "r='pro|(?:^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$)")))
(check-sat)
