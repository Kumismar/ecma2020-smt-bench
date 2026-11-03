; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<area onblur=alert(1) tabindex=1 id=x></area><input autofocus>") (= x "<a href=""\xE1\xA0\x8Ejavascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<style>:target {color:red;}</style><acronym id=x style=""transition:color 1s"" ontransitionend=alert(1)></acronym>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(?!.*gmail|.*outlook|.*yahoo|.*hotmail|.*lexter).*$") ((_ re.from_regex ecma2020) "^[A-Z]{8,11}$")))))
(check-sat)
