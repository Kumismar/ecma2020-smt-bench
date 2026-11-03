; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><label style=""animation-name:x"" onanimationend=""alert(1)""></label>") (= x "<data onmousemove=""alert(1)"">test</data>") (= x "<acronym oncontextmenu=""alert(1)"">test</acronym>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,10}$") (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{7,20}") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Zn0-9.-]+\.[a-z]{2,4}$")))))
(check-sat)
