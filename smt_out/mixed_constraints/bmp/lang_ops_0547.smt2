; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\x07javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<style>@keyframes x{}</style><source style=""animation-name:x"" onanimationend=""alert(1)""></source>") (= x "<nextid draggable=""true"" ondragstart=""alert(1)"">test</nextid>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z0-9+. ]+$)|([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,15}$)") (re.inter ((_ re.from_regex ecma2020) "^[A-z0-9-\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{d1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]+$") (re.diff (re.++ re.all (str.to_re "tid>")) ((_ re.from_regex ecma2020) "^((\\+91-?)|0)?[0-9]{10}$"))))))
(check-sat)
