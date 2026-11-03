; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^\S+$") (re.union ((_ re.from_regex ecma2020) "^\S+$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ ]{1,64}$"))) ((_ re.from_regex ecma2020) "^\S+$")) (re.diff ((_ re.from_regex ecma2020) "^\S+$") (re.inter ((_ re.from_regex ecma2020) "^\S+$") (re.union ((_ re.from_regex ecma2020) "^\S+$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ ]{1,64}$")))))))
(check-sat)
