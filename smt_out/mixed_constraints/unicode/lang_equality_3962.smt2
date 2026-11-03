; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_after_lookahead, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "(?=.*\d).{2}/(?=.*\d).{2}")) (str.in_re x ((_ re.from_regex ecma2020 u) "(?=(?=.*\d).{2}/(?=.*\d).{2}) co")))))
(check-sat)
