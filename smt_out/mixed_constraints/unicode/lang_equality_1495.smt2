; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z\u{415}\u{4b9}\u{413}\u{458}\u{413}\u{b6}\u{414}\u{4b1}\u{414}\u{4b9}\u{413}\u{a7}\u{415}\u{4bb}\u{413}\u{4a3}\u{413}\u{2013}\u{414}\u{b0}\u{414}\u{4bb}\u{413}\u{4ae}0-9-_\.]{1,15}$"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z\u{415}\u{4b9}\u{413}\u{458}\u{413}\u{b6}\u{414}\u{4b1}\u{414}\u{4b9}\u{413}\u{a7}\u{415}\u{4bb}\u{413}\u{4a3}\u{413}\u{2013}\u{414}\u{b0}\u{414}\u{4bb}\u{413}\u{4ae}0-9-_\.]{1,15}$"))))
(check-sat)
