; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^.*@(?!gmail).*$") ((_ re.from_regex ecma2020) "^\d{4}\d{3}\d{4}$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020) "^.*@(?!gmail).*$")) (re.comp ((_ re.from_regex ecma2020) "^\d{4}\d{3}\d{4}$")))))))
(check-sat)
