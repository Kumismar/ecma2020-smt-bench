; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<multicol onmouseup=""alert(1)"">test</multicol>") (= x "<scrscriptipt>alert(1)</scrscriptipt>") (= x "<fieldset id=x tabindex=1 onactivate=alert(1)></fieldset>")))
(assert (str.in_re x (re.inter (re.union (re.++ (str.to_re "<scrsc") re.all) (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,4}$"))) ((_ re.from_regex ecma2020 u) "(^[1-9]$|0[1-9]|1[0-2])"))))
(check-sat)
