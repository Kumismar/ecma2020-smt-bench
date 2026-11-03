; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><select style=""animation-name:x"" onanimationstart=""alert(1)""></select>") (= x "<textarea onfocusout=alert(1) id=x></textarea><input autofocus>") (= x "<i onmousemove=""alert(1)"">test</i>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(16)$") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z\s -]+$")))))
(check-sat)
