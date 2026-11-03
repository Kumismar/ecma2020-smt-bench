; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><col style=""animation-name:x"" onanimationend=""alert(1)""></col>") (= x "<isindex id=x tabindex=1 onfocus=alert(1)></isindex>") (= x "<sup draggable=""true"" ondrag=""alert(1)"">test</sup>")))
(assert (not (str.in_re x (re.diff (re.union ((_ re.loop 45 56) re.allchar) ((_ re.from_regex ecma2020) "^[a-zA-Z]+ [a-zA-Z]+$")) (re.union ((_ re.from_regex ecma2020) "[A-z0-9._%+-]+@[A-z0-9-]+\.[A-z]{2,6}$") ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w]{2,6}$"))))))
(check-sat)
