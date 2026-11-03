; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x """/><img/onerror=\x0Ajavascript:alert(1)\x0Asrc=xxx:x />") (= x "<style>@keyframes x{}</style><mark style=""animation-name:x"" onanimationstart=""alert(1)""></mark>") (= x "<D3/OnpOinTeReENter=confirm``>click here")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[\w\s]+") ((_ re.from_regex ecma2020 u) ".*^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$.*"))))
(check-sat)
