; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "[A-Fa-f0-9]{6}") ((_ re.from_regex ecma2020 u) "(?:[A-Fa-f0-9]{6})(?:on)?")) (re.diff ((_ re.from_regex ecma2020 u) "(?:[A-Fa-f0-9]{6})(?:on)?") ((_ re.from_regex ecma2020 u) "[A-Fa-f0-9]{6}")))))
(check-sat)
