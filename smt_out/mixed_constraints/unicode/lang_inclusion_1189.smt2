; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?:^[\u{5c}u0600-\u{5c}u06FF\u{623}-\u{64a}a-z A-Z]*$)#X3") ((_ re.from_regex ecma2020 u) "^[\u{5c}u0600-\u{5c}u06FF\u{623}-\u{64a}a-z A-Z]*$"))))
(check-sat)
