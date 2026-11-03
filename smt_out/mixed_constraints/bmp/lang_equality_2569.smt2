; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[A-Za-z]).{6,}") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$")) (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$") ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[A-Za-z]).{6,}")))))
(check-sat)
