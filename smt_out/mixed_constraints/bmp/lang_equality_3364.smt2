; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}$") ((_ re.from_regex ecma2020) "^.{6,18}$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}$") ((_ re.from_regex ecma2020) "^.{6,18}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}$") ((_ re.from_regex ecma2020) "^.{6,18}$")) (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}$") ((_ re.from_regex ecma2020) "^.{6,18}$"))))))
(check-sat)
