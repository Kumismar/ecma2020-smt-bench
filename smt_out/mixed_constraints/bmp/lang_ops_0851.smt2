; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<data onblur=alert(1) tabindex=1 id=x></data><input autofocus>") (= x "<aside onmouseleave=""\u{10348}alert(1)"">test</aside>") (= x "<frameset onload=alert(123)>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) ".+@[^.]+\..{2,}") ((_ re.from_regex ecma2020) "^(([^<>()\[\]\\.,;:\s@']+(\.[^<>()\[\]\\.,;:\s@']+)*)|('.+'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]{2,}\.)+[a-zA-Z]{2,}))$")))))
(check-sat)
