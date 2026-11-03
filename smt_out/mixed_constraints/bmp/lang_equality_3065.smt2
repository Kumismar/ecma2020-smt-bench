; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "[0-9]{4}$") ((_ re.from_regex ecma2020) "@[a-zA-Z0-9_]+")) (re.inter ((_ re.from_regex ecma2020) "@[a-zA-Z0-9_]+") ((_ re.from_regex ecma2020) "[0-9]{4}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "@[a-zA-Z0-9_]+") ((_ re.from_regex ecma2020) "[0-9]{4}$")) (re.inter ((_ re.from_regex ecma2020) "[0-9]{4}$") ((_ re.from_regex ecma2020) "@[a-zA-Z0-9_]+"))))))
(check-sat)
