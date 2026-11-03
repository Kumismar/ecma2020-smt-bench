; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(.+){5}(-(.+){4})?$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\s,.'-]{3,}$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\s,.'-]{3,}$") ((_ re.from_regex ecma2020) "^(.+){5}(-(.+){4})?$"))))))
(check-sat)
