; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$") ((_ re.from_regex ecma2020) "^[\+]?[0-9]{1,3}[\s]?[\(]?[0-9]{0,2}[\)]?[\s]?[0-9\s]{10,14}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$") (re.comp ((_ re.from_regex ecma2020) "^[\+]?[0-9]{1,3}[\s]?[\(]?[0-9]{0,2}[\)]?[\s]?[0-9\s]{10,14}")))))))
(check-sat)
