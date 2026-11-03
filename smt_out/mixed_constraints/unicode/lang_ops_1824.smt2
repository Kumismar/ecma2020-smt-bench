; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<wbr id=x tabindex=1 onactivate=alert(1)></wbr>") (= x "<style>:target {color: red;}</style><code id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></code>") (= x "<tr oncontextmenu=""alert(1)"">test</tr>")))
(assert (str.in_re x (re.diff (re.union (re.inter (re.++ re.all (str.to_re "de") re.all) ((_ re.from_regex ecma2020 u) "^((?:[\da-fA-F]{4}-)+[\da-fA-F]{4}\s*)+$")) ((_ re.from_regex ecma2020 u) "^.*@(?!gmail).*$")) ((_ re.from_regex ecma2020 u) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"))))
(check-sat)
