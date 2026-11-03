; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._+-]*@[a-zA-Z0-9._+-]+\.[a-z]{2,4}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{1}.{6,}[a-zA-Z0-9]$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{1}.{6,}[a-zA-Z0-9]$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._+-]*@[a-zA-Z0-9._+-]+\.[a-z]{2,4}$"))))))
(check-sat)
