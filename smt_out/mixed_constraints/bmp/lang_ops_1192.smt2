; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:t\u{10348}arget {color: red;}</style><head id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></head>") (= x "<menu id=x tabindex=1 onfocusin=alert(1)></menu>") (= x "<object ondblclick=""alert(1)"">test</object>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "\d{2,4}-\d{3,4}-\d{3,4}") (re.inter ((_ re.from_regex ecma2020) "^(?!http).*$") (re.++ (str.to_re "<") re.all))))))
(check-sat)
