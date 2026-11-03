; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(IR|IG|IN|IP|IH|IM|ir|ig|in|ip|ih|im).+") ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}0-9|\u{3000}| ]+$"))) (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}0-9|\u{3000}| ]+$") ((_ re.from_regex ecma2020) "^(IR|IG|IN|IP|IH|IM|ir|ig|in|ip|ih|im).+"))))))
(check-sat)
