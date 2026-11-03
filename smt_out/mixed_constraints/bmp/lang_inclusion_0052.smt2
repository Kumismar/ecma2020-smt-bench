; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "(?:[\u{ff71}-\u{ff9d}|\u{30a1}-\u{30f3}|\u{3000}| ]+$)(?:t<)?") ((_ re.from_regex ecma2020) "[\u{ff71}-\u{ff9d}|\u{30a1}-\u{30f3}|\u{3000}| ]+$"))))
(check-sat)
