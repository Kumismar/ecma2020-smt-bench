; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input/onmouseover=""javaSCRIPT&colon;confirm&lpar;1&rpar;""") (= x "<del onkeydown=""alert(1)"" contenteditable>test</del>") (= x "<style>@keyframes x{}</style><frame style=""animation-name:x"" onanimationstart=""alert(1)""></frame>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$") (re.comp ((_ re.from_regex ecma2020) "[A-Za-z].{3,}")))))
(check-sat)
