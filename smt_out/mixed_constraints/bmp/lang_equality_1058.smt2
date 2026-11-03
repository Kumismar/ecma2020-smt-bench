; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\-\s]+") (re.union ((_ re.from_regex ecma2020) "[a-zA-Z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\-\s]+") ((_ re.from_regex ecma2020) "^[a-zA-Z]([-_a-zA-Z0-9]{5,19})+$"))) ((_ re.from_regex ecma2020) "[a-zA-Z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}\-\s]+"))))
(check-sat)
