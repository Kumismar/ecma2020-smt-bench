; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><time onload=alert(1)></time>") (= x "<style>@keyframes x{}</style><content style=""animation-name:x"" onanimationstart=""alert(1)""></content>") (= x "<bdi id=x tabindex=1 ondeactivate=alert(1)></bdi><input id=y autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$") ((_ re.from_regex ecma2020) "^\d{10}$")))))
(check-sat)
