; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<menu onmousedown=""alert(1)"">test</menu>") (= x "<label onmousemove=""alert(1)"">test</label>") (= x "<style>:target {transform: rotate(180deg);}</style><strike id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></strike>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^DE(?:\s*[0-9a-zA-Z]\s*){20}$") (re.union (re.union ((_ re.from_regex ecma2020 u) "^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$") (re.comp (re.++ re.all (str.to_re "yle>") re.all))) ((_ re.from_regex ecma2020 u) "^[^-\s][a-zA-Z\u{c0}-\u{fa} ]*"))))))
(check-sat)
