; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<code onmouseenter=""alert(1)"">test</code>") (= x "<em ondblclick=""alert(1)"">test</em>") (= x "<style>@keyframes x{}</style><time style=""animation-name:x"" onanimationstart=""alert(1)""></time>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^.{2,30}") ((_ re.from_regex ecma2020 u) "^\d{16}$")))))
(check-sat)
