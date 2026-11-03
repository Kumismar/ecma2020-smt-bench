; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<command draggable=""true"" ondragend=""alert(1)"">test</command>") (= x "<s draggable=""true"" ondrag=""alert(1)"">test</s>") (= x "<style>:target {color: red;}</style><h1 id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></h1>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d\d\d\d$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_]{17}$"))))
(check-sat)
