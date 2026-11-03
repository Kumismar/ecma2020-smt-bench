; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<keygen id=x onfocus=alert(1)>") (= x "<bdi\u{20000} onbeforepaste=""alert(1)"" con\u{1d400}tenteditable>test</bdi>") (= x "<style>@keyframes x{}</style><tfoot style=""animation-name:x"" onanimationstart=""alert(1)""></tfoot>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^\d{5,6}(?:[-\s]\d{4})?$") ((_ re.from_regex ecma2020 u) "[1-9][0-9]{3}"))))
(check-sat)
