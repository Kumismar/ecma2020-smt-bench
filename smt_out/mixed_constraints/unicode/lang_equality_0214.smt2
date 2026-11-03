; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^\S[\w \u{df}\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]*") ((_ re.from_regex ecma2020 u) "^[^@]+@[^@]+\.[a-zA-Z]{2,6}|^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})")) (re.inter ((_ re.from_regex ecma2020 u) "^\S[\w \u{df}\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]*") ((_ re.from_regex ecma2020 u) "^[^@]+@[^@]+\.[a-zA-Z]{2,6}|^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})")))))
(check-sat)
