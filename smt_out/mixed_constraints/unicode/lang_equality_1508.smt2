; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "(?:[a-zA-Z ]{4,64})(?:age Co)?") ((_ re.from_regex ecma2020 u) "[a-zA-Z ]{4,64}")) (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z ]{4,64}") ((_ re.from_regex ecma2020 u) "(?:[a-zA-Z ]{4,64})(?:age Co)?")))))
(check-sat)
