; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<s id=x tabindex=1 onbeforeactivate=alert(1)></s>") (= x "<style>@keyframes x{}</style><th style=""animation-name:x"" onanimationend=""alert(1)""></th>") (= x "<blink onmouseover=""alert(1)"">test</blink>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^.{5}$") (re.inter (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,10}$") (re.++ (str.to_re "<s i") re.all)) ((_ re.from_regex ecma2020) "^.{8,255}$")))))
(check-sat)
