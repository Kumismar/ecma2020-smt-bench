; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><frame style=""animation-name:x"" onanimationstart=""alert(1)""></frame>") (= x "<button draggable=""true"" ondragleave=""alert(1)"">test</button>") (= x "<caption onbeforecut=""alert(1)"" contenteditable>test</caption>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@[a-z.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020 u) "(^[?+])*[0-9]*")) ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}A-Za-z\s\-]+$"))))
(check-sat)
