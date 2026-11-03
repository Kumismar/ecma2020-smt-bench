; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<kbd draggable=""true"" ondragend=""alert(1)"">test</kbd>") (= x "<style>:target {color: red;}</style><big id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></big>") (= x "<style>@keyframes x{}</style><div style=""animation-name:x"" onanimationend=""alert(1)""></div>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[0-9_\-_/_(_)_+_ ]*$") ((_ re.from_regex ecma2020 u) "^\d{5,8}$"))))))
(check-sat)
