; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "(?=^(.{10}|.{22})$)^\w*$") ((_ re.from_regex ecma2020) "[_A-Za-z0-9\u{621}-\u{64a}]{3,}$")) (re.diff ((_ re.from_regex ecma2020) "[_A-Za-z0-9\u{621}-\u{64a}]{3,}$") ((_ re.from_regex ecma2020) "(?=^(.{10}|.{22})$)^\w*$"))))
(check-sat)
