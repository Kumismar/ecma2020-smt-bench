; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "\d{7,11}") ((_ re.from_regex ecma2020 u) "[0-9\s)(-_]*")) (re.diff ((_ re.from_regex ecma2020 u) "[0-9\s)(-_]*") ((_ re.from_regex ecma2020 u) "\d{7,11}"))))
(check-sat)
