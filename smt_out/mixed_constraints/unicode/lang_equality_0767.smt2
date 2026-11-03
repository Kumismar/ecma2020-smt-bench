; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^(?=.*\d).{10}$") ((_ re.from_regex ecma2020 u) "^\u{a3}?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$")) (re.inter ((_ re.from_regex ecma2020 u) "^\u{a3}?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$") ((_ re.from_regex ecma2020 u) "^(?=.*\d).{10}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^\u{a3}?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$") ((_ re.from_regex ecma2020 u) "^(?=.*\d).{10}$")) (re.inter ((_ re.from_regex ecma2020 u) "^(?=.*\d).{10}$") ((_ re.from_regex ecma2020 u) "^\u{a3}?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$"))))))
(check-sat)
