; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}-\u{ff}\s]{1,25}") ((_ re.from_regex ecma2020) "^([6789]{1})+([0-9]{9})+"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}-\u{ff}\s]{1,25}") (re.comp ((_ re.from_regex ecma2020) "^([6789]{1})+([0-9]{9})+")))))))
(check-sat)
