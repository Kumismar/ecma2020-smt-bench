; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "^([7]{1})([5]{1})([6]{1})(.)([0-9]{4})(.)([0-9]{4})(.)([0-9]{2})$") ((_ re.from_regex ecma2020) "[a-zA-Z]{2}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([7]{1})([5]{1})([6]{1})(.)([0-9]{4})(.)([0-9]{4})(.)([0-9]{2})$") ((_ re.from_regex ecma2020) "[a-zA-Z]{2}"))))))
(check-sat)
