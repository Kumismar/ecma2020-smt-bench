; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<base id=x tabindex=1 ondeactivate=alert(1)></base><input id=y autofocus>") (= x "<svg onmouseover=""alert(1)"">test</\u{1d400}svg>") (= x "<element onclick=""alert(1)"">test</element>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$") (re.++ re.all (str.to_re "te=a") re.all)) (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{4,12}$")))))
(check-sat)
