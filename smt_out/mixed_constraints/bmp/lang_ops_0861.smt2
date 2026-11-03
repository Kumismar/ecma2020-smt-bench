; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<font draggable=""true"" ondragleave=""alert(1)"">test</font>") (= x "<style>@keyframes x{}</style><option style=""animation-name:x"" onanimationend=""alert(1)""></option>") (= x "<input id=x onfocusin=alert(1)>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^\d{8,}$") (re.++ re.all (str.to_re "n>"))) ((_ re.from_regex ecma2020) "[0-9\(\)\+\-\s]{9,}"))))
(check-sat)
