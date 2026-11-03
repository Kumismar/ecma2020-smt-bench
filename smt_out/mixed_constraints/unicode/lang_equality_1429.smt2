; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$"))) ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$") (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$")))))))
(check-sat)
