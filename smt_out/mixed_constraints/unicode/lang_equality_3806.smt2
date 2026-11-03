; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_\.]{2,20}$") ((_ re.from_regex ecma2020 u) "^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_\.]{2,20}$")) (re.comp ((_ re.from_regex ecma2020 u) "^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$")))))))
(check-sat)
