; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><body id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></body>") (= x "<title onclick=""alert(1)"">test</title>") (= x "<strong onkeyup=""alert(1)"" contenteditable>test</strong>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z]+(((\s*-\s*)?|(\s)+)?[a-zA-Z]+)*") ((_ re.from_regex ecma2020 u) "^[A-z0-9]{1,}$"))))
(check-sat)
