; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><col style=""animation-name:x"" onanimationend=""alert(1)""></col>") (= x "<b onmouseleave=""alert(1)"">test</b>") (= x "<wbr onmousedown=""alert(1)"">test</wbr>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^[1]2$") ((_ re.from_regex ecma2020) "^(http:\/\/|https:\/\/|)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$")) (re.++ re.all (str.to_re "tyle=""") re.all))))
(check-sat)
