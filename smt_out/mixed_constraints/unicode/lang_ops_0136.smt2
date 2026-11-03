; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<pre onmouseenter=""alert(1)"">test</pre>") (= x "<style>@keyframes x{}</style><code style=""animation-name:x"" onanimationstart=""alert(1)""></code>") (= x "<multicol draggable=""true"" ondragenter=""alert(1)"">test</multicol>")))
(assert (str.in_re x (re.union (re.++ re.all (str.to_re "im") re.all) (re.inter ((_ re.from_regex ecma2020 u) "[0-9999]{1,4}") ((_ re.from_regex ecma2020 u) "^(([A-Za-z_\-\u{5c}u0590-\u{5c}u05FF ])\2?(?!\2))+$")))))
(check-sat)
