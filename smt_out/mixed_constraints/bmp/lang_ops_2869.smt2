; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<br id=x tabindex=1 onbeforedeactivate=alert(1)></br><input autofocus>") (= x "<style>:target {color: red;}</style><aside id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></aside>") (= x "<center onmousedown=""alert(1)"">test</center>")))
(assert (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re "us>")) (re.comp ((_ re.from_regex ecma2020) "\([0-9]{2}\) [0-9]{8,9}$"))) (re.inter ((_ re.from_regex ecma2020) "^CB\d{3,7}|cb\d{3,7}$") ((_ re.from_regex ecma2020) "^[1][3,4,5,6,7,8,9][0-9]{9}$")))))
(check-sat)
