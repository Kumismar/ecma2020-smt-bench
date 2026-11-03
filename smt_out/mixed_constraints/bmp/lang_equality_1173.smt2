; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^[0]{1}|([0-9]{10})$") ((_ re.from_regex ecma2020) "BECAUSE I LIVE YE SHALL LIVE ALSO")) (re.inter ((_ re.from_regex ecma2020) "BECAUSE I LIVE YE SHALL LIVE ALSO") ((_ re.from_regex ecma2020) "^[0]{1}|([0-9]{10})$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "BECAUSE I LIVE YE SHALL LIVE ALSO") ((_ re.from_regex ecma2020) "^[0]{1}|([0-9]{10})$")) (re.inter ((_ re.from_regex ecma2020) "^[0]{1}|([0-9]{10})$") ((_ re.from_regex ecma2020) "BECAUSE I LIVE YE SHALL LIVE ALSO"))))))
(check-sat)
