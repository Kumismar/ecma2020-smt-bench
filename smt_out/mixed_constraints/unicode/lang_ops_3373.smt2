; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<data onblur=alert(1) tabindex=1 id=x></data><input autofocus>") (= x "<style>@keyframes x{}</style><strike style=""animation-name:x"" onanimationstart=""alert(1)""></strike>") (= x "<var draggable=""true"" ondragend=""alert(1)"">test</var>")))
(assert (str.in_re x (re.diff (re.++ re.all (str.to_re "inde") re.all) (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._!%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$")))))
(check-sat)
