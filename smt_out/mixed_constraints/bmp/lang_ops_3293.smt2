; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<script>alert('XSS');</script>") (= x "<style>@keyframes x{}</style><nextid style=""animation-name:x"" onanimationend=""alert(1)""></nextid>") (= x "<sup onmouseout=""alert(1)"">test</sup>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[1-9]\d{4,9}$") ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+[a-z0-9.-]+[a-z0-9.-]+\.[a-z]{2,4}"))))
(check-sat)
