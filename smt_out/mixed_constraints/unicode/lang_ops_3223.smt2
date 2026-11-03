; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<data onmousemove=""alert(1)"">test</data>") (= x "<source id=x tabindex=1 onbeforedeactivate=alert(1)></source><input autofocus>") (= x "<article onmousemove=""alert(1)"">test</article>")))
(assert (str.in_re x (re.inter ((_ re.loop 36 50) re.allchar) (re.union ((_ re.from_regex ecma2020 u) "^[-a-zA-Z0-9 .]+$") ((_ re.from_regex ecma2020 u) "^\+?[0-9\s]{9,17}$")))))
(check-sat)
