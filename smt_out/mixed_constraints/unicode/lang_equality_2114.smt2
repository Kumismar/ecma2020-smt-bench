; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_\s]{1,30}$") ((_ re.from_regex ecma2020 u) "[0-9\u{c6}\u{d8}\u{c5}\u{e6}\u{f8}\u{e5}\u{dc}\u{fc}\u{d6}\u{f6}\u{c4}\u{e4}a-zA-Z+-_@./)(!#&% ]{6,99}")) (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_\s]{1,30}$") ((_ re.from_regex ecma2020 u) "[0-9\u{c6}\u{d8}\u{c5}\u{e6}\u{f8}\u{e5}\u{dc}\u{fc}\u{d6}\u{f6}\u{c4}\u{e4}a-zA-Z+-_@./)(!#&% ]{6,99}"))))
(check-sat)
