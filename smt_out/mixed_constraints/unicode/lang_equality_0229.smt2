; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) ".{5,24}") ((_ re.from_regex ecma2020 u) "[^%]{4,}")) (re.union ((_ re.from_regex ecma2020 u) "[^%]{4,}") ((_ re.from_regex ecma2020 u) ".{5,24}"))) (re.diff (re.union ((_ re.from_regex ecma2020 u) "[^%]{4,}") ((_ re.from_regex ecma2020 u) ".{5,24}")) (re.union ((_ re.from_regex ecma2020 u) ".{5,24}") ((_ re.from_regex ecma2020 u) "[^%]{4,}"))))))
(check-sat)
