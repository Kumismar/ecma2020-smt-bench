; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<datalist draggable=""true"" ondragenter=""alert(1)"">test</datalist>") (= x "<cite onmouseup=""alert(1)"">test</cite>") (= x "<style>@keyframes x{}</style><select style=""animation-name:x"" onanimationend=""alert(1)""></select>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[0-9]{5}-[0-9]{6}") (re.union ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]+$") (re.inter (re.++ re.all (str.to_re "te>") re.all) ((_ re.from_regex ecma2020) "^[A-Za-z0-9]*$"))))))
(check-sat)
