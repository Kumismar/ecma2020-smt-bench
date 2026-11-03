; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$") ((_ re.from_regex ecma2020 u) "[0-9]{5}-[0-9]{3}$")) ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$")) ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$")))
(check-sat)
