; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "[0-9]+(\.[0-9][0-9])?") ((_ re.from_regex ecma2020 u) "^(\d{3}(0[1-9]|1[0-2]))|(\d{2}(0[1-9]|1[0-2]))$")))
(check-sat)
