; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div onmouseup=""alert(1)"">test</div>") (= x "<u id=x tabindex=1 ondeactivate=alert(1)></u><input id=y autofocus>") (= x "<script>javascript:alert(1)</script\x0A")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[^@]{1,64}@[^@]{1,256}\.[^@]{1,32}$") (re.inter ((_ re.from_regex ecma2020 u) "^(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}") (re.++ re.all (str.to_re "1)""") re.all)))))
(check-sat)
