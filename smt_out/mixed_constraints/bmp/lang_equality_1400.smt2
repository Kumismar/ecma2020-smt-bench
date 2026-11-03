; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^973([0-9]{8})|[0-9]{8}$") ((_ re.from_regex ecma2020) "^[\-\.0-9A-Z a-z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]{3,}$")) (re.inter ((_ re.from_regex ecma2020) "^973([0-9]{8})|[0-9]{8}$") (re.comp ((_ re.from_regex ecma2020) "^[\-\.0-9A-Z a-z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]{3,}$"))))))
(check-sat)
