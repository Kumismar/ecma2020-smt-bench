; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<iframe draggable=""true"" ondragleave=""alert(1)"">test</iframe>") (= x "<style id=x tabindex=1 onactivate=alert(1)></style>") (= x "<acronym id=x tabindex=1 onbeforedeactivate=alert(1)></acronym><input autofocus>")))
(assert (str.in_re x (re.union (re.inter (re.++ re.all (str.to_re "cus>") re.all) (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,12}$") ((_ re.from_regex ecma2020 u) "^[\w\s-]*$"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]{1,62}(?:\.[a-zA-Z0-9-]{1,62}){1,3}$"))))
(check-sat)
