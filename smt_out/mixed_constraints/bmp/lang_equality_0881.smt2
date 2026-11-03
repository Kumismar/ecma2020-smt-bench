; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9-_\. ]{1,31}$") ((_ re.from_regex ecma2020) "^[0-9-+()/ ]*$")) (re.diff ((_ re.from_regex ecma2020) "^[0-9-+()/ ]*$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9-_\. ]{1,31}$"))))
(check-sat)
