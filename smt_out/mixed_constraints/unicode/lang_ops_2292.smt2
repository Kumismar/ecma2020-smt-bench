; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<listing onmousedown=""alert(1)"">test</listing>") (= x "<style>@keyframes x{}</style><ul style\u{1f600}=""animation-name:x"" onanimationstart=""alert(\u{1f600}1)""></ul>") (= x "<svg><tr onload=alert(1)></tr>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-z0-9_.+-]+@[a-z0-9-]+\.[a-z0-9-.]+$") (re.diff ((_ re.from_regex ecma2020 u) "^[\w.%+-_]+@[\w.-]+\.[\w]{2,6}$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_.+-])+@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$"))))))
(check-sat)
