; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "VXKRI2D4FR") ((_ re.from_regex ecma2020) "^[0-9-/\s]*"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[0-9-/\s]*") ((_ re.from_regex ecma2020) "VXKRI2D4FR"))))))
(check-sat)
