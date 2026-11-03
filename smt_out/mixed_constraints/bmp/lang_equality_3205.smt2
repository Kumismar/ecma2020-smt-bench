; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "^([1-9]\d*|0)(\.\d+)?$") ((_ re.from_regex ecma2020) "^.{1,16}$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020) "^.{1,16}$") ((_ re.from_regex ecma2020) "^([1-9]\d*|0)(\.\d+)?$"))))))
(check-sat)
