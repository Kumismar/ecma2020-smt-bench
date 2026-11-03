; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<var id=x t\u{1f4a9}abindex=1 onbeforedeactivate=alert(\u{1f4a9}1)></var><input autofocus>") (= x "<iframe onload=alert(1)></iframe>") (= x "<strike onmouseenter=""alert(1)"">test</strike>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+([\.]{1})[0-9a-zA-Z\._-]+$") ((_ re.from_regex ecma2020) "^[0-2]?\d:[0-5]\d$"))))
(check-sat)
