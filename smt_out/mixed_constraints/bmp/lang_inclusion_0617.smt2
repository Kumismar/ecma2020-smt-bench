; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020) "^(?:[a-fA-F0-9]{8}|[a-fA-F0-9]{11}|[a-fA-F0-9]{14}|[a-fA-F0-9]{15,16}|[a-fA-F0-9]{18})$") ((_ re.from_regex ecma2020) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$")) (re.comp ((_ re.from_regex ecma2020) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$"))) (re.comp ((_ re.from_regex ecma2020) "^(\+42(0|1) ?|0)?([1-9]{1}[0-9]{2} ?[0-9]{3} ?[0-9]{3})$"))))
(check-sat)
