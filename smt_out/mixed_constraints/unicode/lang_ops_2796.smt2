; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<iframe onReadyStateChange iframe onReadyStateChange=""javascript:javascript:alert(1)""></iframe onReadyStateChange>") (= x "<style>@keyframes x{}</style><ul style=""animation-name:x"" onanimationend=""alert(1)""></ul>") (= x "<param onmouseover=""alert(1)"">test</param>")))
(assert (str.in_re x (re.union (re.++ re.all (str.to_re "a") re.all) (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z ]{1,20}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$")))))
(check-sat)
