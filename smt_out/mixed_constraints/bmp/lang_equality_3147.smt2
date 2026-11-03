; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "^[0-9\.]+$") ((_ re.from_regex ecma2020) "[!-~\u{c0}-\u{ff} ]{0,25}")))
(check-sat)
