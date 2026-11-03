; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "><\/fo|(?:^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$)") ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$")) ((_ re.from_regex ecma2020) "><\/fo|(?:^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$)")))
(check-sat)
