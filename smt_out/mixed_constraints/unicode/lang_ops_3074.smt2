; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><header onload=alert(1)></header>") (= x "<style>:target {color: red;}</style><dd id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></dd>") (= x "<output onmouseout=""alert(1)"">test</output>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "raju") ((_ re.from_regex ecma2020 u) "^[a-zA-Z \u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]+$"))))
(check-sat)
