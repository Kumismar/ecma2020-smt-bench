; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<samp draggable=""true"" ondragend=""alert(1)"">test</samp>") (= x "<body onmouseenter=""alert(1)"">test</body>") (= x "<font id=x tabindex=1 onfocus=alert(1)></font>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) ".{6,60}") ((_ re.from_regex ecma2020 u) "50$")))))
(check-sat)
