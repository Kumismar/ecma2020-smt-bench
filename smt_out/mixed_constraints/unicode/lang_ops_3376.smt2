; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<mark onmouseout=""alert(1)"">test</mark>") (= x "<style>@keyframes x{}</style><header style=""animation-name:x"" onanimationend=""alert(1)""></header>") (= x "<a href=""\x18javascript:javascript:alert(1)\u{1f600}"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9_\.\-]+@(?:[a-zA-Z0-9\-]+\.)+[a-z]{2,4}$") ((_ re.from_regex ecma2020 u) "(?!^\d+$)^.+$"))))
(check-sat)
