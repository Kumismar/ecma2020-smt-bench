; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^(42)") (re.union ((_ re.from_regex ecma2020 u) "^(42)") ((_ re.from_regex ecma2020 u) "^[#.0-9a-zA-Z\s,-/']{3,250}"))) ((_ re.from_regex ecma2020 u) "^(42)"))))
(check-sat)
