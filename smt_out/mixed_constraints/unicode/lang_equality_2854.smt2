; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}/\s]+){0,100}$"))) ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}/\s]+){0,100}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}/\s]+){0,100}$") (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}/\s]+){0,100}$")))))))
(check-sat)
