; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^EP\d{3,7}|IA\d{3,7}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\s]+")) (re.inter ((_ re.from_regex ecma2020 u) "^EP\d{3,7}|IA\d{3,7}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\s]+"))))
(check-sat)
