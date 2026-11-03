; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<cite id=x tabindex=1 onbeforedeactivate=alert(1)></cite><input autofocus>") (= x "<a href=""\x04javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<style>:target {color:red;}</style><optgroup id=x style=""transition:color 1s"" ontransitionend=alert(1)></optgroup>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "(^[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])|(^.{4,11})") ((_ re.from_regex ecma2020) "(^\d{3}-\d{3}-\d{4}$)")))))
(check-sat)
