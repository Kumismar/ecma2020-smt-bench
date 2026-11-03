; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<element onblur=alert(1) tabindex=1 id=x></element><input autofocus>") (= x "<circle r=""400""></circle>") (= x "<a href=""javascript\x3A:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) ".+@.+\...+") (re.comp ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z]).{6,}")))))
(check-sat)
