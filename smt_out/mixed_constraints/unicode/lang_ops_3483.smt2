; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<li onmouseout=""alert(1)"">test</li>") (= x "<nobr oncontextmenu=""alert(1)"">test</nobr>") (= x "<sup onfocusout=alert(1) tabindex=1 id=x></sup><input autofocus>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "ocus>")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Z a-z 0-9]{5,20}$") (re.comp ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9@\.]*"))))))
(check-sat)
