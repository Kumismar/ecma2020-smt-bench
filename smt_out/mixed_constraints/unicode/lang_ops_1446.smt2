; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><ul id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></ul>") (= x "<style>@keyframes x{}</style><li style=""animation-name:x"" onanimationend=""alert(1)""></li>") (= x "<script>Object.__noSuchMethod__ = Function,[{}][0].constructor._('javascript:alert(1)')()</script>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{0,2}-?[0-9]+$") ((_ re.from_regex ecma2020 u) "^(https:\/\/)?[a-zA-Z0-9-]*.myshopify.com\/?$")))))
(check-sat)
