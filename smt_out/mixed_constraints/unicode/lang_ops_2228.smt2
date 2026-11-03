; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<frameset onload=javascript:alert(1)>") (= x "<label id=x tabindex=1 onbeforeactivate=alert(1)></label>") (= x "<nav draggable=""true"" ondragend=""alert(1)"">test</nav>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9 ]*$") ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).{6,}"))))
(check-sat)
