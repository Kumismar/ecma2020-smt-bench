; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z\u{c0}-\u{ff}0-9_-]{3,16}$") ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z\u{c0}-\u{ff}0-9_-]{3,16}$") (re.comp ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}")))))))
(check-sat)
