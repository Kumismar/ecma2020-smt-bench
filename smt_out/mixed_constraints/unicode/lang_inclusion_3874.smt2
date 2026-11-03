; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?:^([0-9]{16}|\*{12}[0-9]{4})$)(?:ita)?") ((_ re.from_regex ecma2020 u) "^([0-9]{16}|\*{12}[0-9]{4})$")) ((_ re.from_regex ecma2020 u) "(?:^([0-9]{16}|\*{12}[0-9]{4})$)(?:ita)?")))
(check-sat)
