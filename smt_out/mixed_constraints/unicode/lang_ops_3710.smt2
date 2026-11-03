; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<menu id=x tabindex=1 ondeactivate=alert(1)></menu><input id=y autofocus>") (= x "<mark draggable=""true"" ondragstart=""alert(1)"">test</mark>") (= x "<s ondblclick=""alert(1)"">test</s>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(0|\+)\d{2,}[0-9-/\s]*$") ((_ re.from_regex ecma2020 u) "^([0-9]){1,5}$"))))
(check-sat)
