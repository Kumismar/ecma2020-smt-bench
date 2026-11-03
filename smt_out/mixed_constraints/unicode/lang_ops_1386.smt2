; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<time onmousedown=""alert(1)"">test</time>") (= x "<address onmouseover=""alert(1)"">test</address>") (= x "<style>:target {color: red;}</style><section id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></section>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^testpage$") ((_ re.from_regex ecma2020 u) "[ \t\r\n\f0-9-+()-;]*$"))))
(check-sat)
