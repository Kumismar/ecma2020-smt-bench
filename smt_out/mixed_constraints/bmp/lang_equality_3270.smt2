; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[0-9\.]{1,}") ((_ re.from_regex ecma2020) "^(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20)\d\d$"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20)\d\d$") ((_ re.from_regex ecma2020) "[0-9\.]{1,}"))))))
(check-sat)
