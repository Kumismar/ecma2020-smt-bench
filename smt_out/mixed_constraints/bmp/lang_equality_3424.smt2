; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,20}$") ((_ re.from_regex ecma2020) "^[A-Za-z][a-z'-]{1,}$")) (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z][a-z'-]{1,}$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,20}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z][a-z'-]{1,}$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,20}$")) (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,20}$") ((_ re.from_regex ecma2020) "^[A-Za-z][a-z'-]{1,}$"))))))
(check-sat)
