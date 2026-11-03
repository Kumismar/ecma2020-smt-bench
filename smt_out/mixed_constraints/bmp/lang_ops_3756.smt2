; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rb onmouseenter=""alert(1)"">test</rb>") (= x "<body style=overflow:auto;height:1000px onscroll=alert(1) id=x>#x") (= x "<style>:target {transform: rotate(180deg);}</style><html id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></html>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") ((_ re.from_regex ecma2020) "[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{2,4}$"))))
(check-sat)
