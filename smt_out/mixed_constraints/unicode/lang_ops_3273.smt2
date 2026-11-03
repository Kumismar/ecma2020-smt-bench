; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<figure onpaste=""alert(1)"" contenteditable>test</figure>") (= x "<caption onmouseleave=""alert(1)"">test</caption>") (= x "<style>:target {color: red;}</style><a id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></a>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[0-9-]{9,14}") (re.comp (re.union (re.++ re.all (str.to_re "st</ca") re.all) (re.comp ((_ re.from_regex ecma2020 u) "^\+38\s?\(\d{3}\)\s?\d{3}-?\d{2}-?\d{2}$"))))))))
(check-sat)
