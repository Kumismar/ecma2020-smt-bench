; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "[6|9]{1}[0-9]{8}") (re.union ((_ re.from_regex ecma2020 u) "[6|9]{1}[0-9]{8}") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\.\s]+$"))) ((_ re.from_regex ecma2020 u) "[6|9]{1}[0-9]{8}"))))
(check-sat)
