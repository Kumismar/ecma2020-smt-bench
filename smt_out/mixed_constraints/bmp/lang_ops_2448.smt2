; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><li id=x style=""transition:color 1s"" ontransitionend=alert(1)></li>") (= x "<code onblur=alert(1) tabindex=1 id=x></code><input autofocus>") (= x "<dl onmousedown=""alert(1)"">test</dl>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,15}$") (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}$") ((_ re.loop 26 39) re.allchar)))))
(check-sat)
