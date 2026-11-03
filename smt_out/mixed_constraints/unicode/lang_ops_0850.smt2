; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><header onload=alert(1)></header>") (= x "<element onmouseout=""alert(1)"">test</element>") (= x "<style>:target {color: red;}</style><link id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></link>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._]+(?<![_.])$") (re.comp ((_ re.from_regex ecma2020 u) "^\d{3}[-]?\d{3}[-]?\d{3}$"))) (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z \u{e9}\u{e8}\u{e7}\u{e0}\u{ea}_\.-]{2,30}$") (re.comp (re.++ re.all (str.to_re ">")))))))
(check-sat)
