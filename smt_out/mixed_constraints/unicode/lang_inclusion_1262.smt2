; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "([0-9]{2})[0-9]{8}") ((_ re.from_regex ecma2020 u) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$")) ((_ re.from_regex ecma2020 u) "([0-9]{2})[0-9]{8}")) ((_ re.from_regex ecma2020 u) "([0-9]{2})[0-9]{8}"))))
(check-sat)
