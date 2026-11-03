; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[0-9A-Za-z@_-]") ((_ re.from_regex ecma2020) "(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,15}")) ((_ re.from_regex ecma2020) "^[0-9A-Za-z@_-]"))))
(check-sat)
