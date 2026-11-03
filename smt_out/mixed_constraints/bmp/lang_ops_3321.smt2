; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<label onfocusout=alert(1) tabindex=1 id=x></label><input autofocus>") (= x "<command draggable=""true"" ondrag=""alert(1)"">test</command>") (= x "<style>@keyframes x{}</style><select style=""animation-name:x"" onanimationend=""alert(1)""></select>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(\+86)?1\d{10}$") (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z_-]{2,}$") (re.++ re.all (str.to_re "nd>"))))))
(check-sat)
