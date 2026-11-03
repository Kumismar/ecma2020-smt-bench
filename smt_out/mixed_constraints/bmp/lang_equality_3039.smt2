; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[^<>\\/]+$") ((_ re.from_regex ecma2020) ".{6}")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020) "^[^<>\\/]+$")) (re.comp ((_ re.from_regex ecma2020) ".{6}")))))))
(check-sat)
