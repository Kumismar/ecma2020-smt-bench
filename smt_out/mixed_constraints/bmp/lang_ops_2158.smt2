; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input onselect=alert(1) value=""XSS"" autofocus>") (= x "<details draggable=""true"" ondragleave=""alert(1)"">test</details>") (= x "<script language='javascript' src='%(jscript)s'></script>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w\S{6,}") ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}]).{6,}")) ((_ re.from_regex ecma2020) "^[\w]{2,64}$"))))
(check-sat)
