; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><script id=x sty\u{1d400}le=""transition:color 10s"" ontransitioncancel=alert(1)></script>") (= x "<tt oncopy=""alert(1)"" contenteditable>test</tt>") (= x "<style>:target {transform: rotate(180deg);}</style><h1 id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></h1>")))
(assert (str.in_re x (re.inter (re.++ (str.to_re "<") re.all) (re.union ((_ re.from_regex ecma2020) "\u{c2}\u{141}?[0-9]+(\.[0-9]{0,2})??") ((_ re.from_regex ecma2020) "^[0-9]{2}[\:]{1}[0-9]{2}$")))))
(check-sat)
