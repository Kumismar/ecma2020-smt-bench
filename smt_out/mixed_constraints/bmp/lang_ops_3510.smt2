; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<slot onmousemove=""alert(1)"">test</slot>") (= x "<noscript oncontextmenu=""alert(1)"">test</noscript>") (= x "<style onload=alert(1)></style>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$") ((_ re.from_regex ecma2020) "^[1-9][0-9]{4,}$"))))
(check-sat)
