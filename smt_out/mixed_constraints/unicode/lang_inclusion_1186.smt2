; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.inter ((_ re.from_regex ecma2020 u) "(?=.*?[\u{30a1}-\u{30fc}])[\u{30a1}-\u{30fc}s]*") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{1,63}$")) ((_ re.from_regex ecma2020 u) "(?=.*?[\u{30a1}-\u{30fc}])[\u{30a1}-\u{30fc}s]*")) (re.inter ((_ re.from_regex ecma2020 u) "(?=.*?[\u{30a1}-\u{30fc}])[\u{30a1}-\u{30fc}s]*") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{1,63}$"))))
(check-sat)
