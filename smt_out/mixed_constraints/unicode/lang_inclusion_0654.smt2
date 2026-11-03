; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "<\/rub|(?:\d{6,7})") ((_ re.from_regex ecma2020 u) "\d{6,7}")) ((_ re.from_regex ecma2020 u) "\d{6,7}")))
(check-sat)
