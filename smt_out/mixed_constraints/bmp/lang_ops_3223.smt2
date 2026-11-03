; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<blink id=x tabindex=1 onbeforeactivate=alert(1)></blink>") (= x "&lt;XSS STYLE=\""behavior&#58; url(xss&#46;htc);\""&gt;") (= x "<colgroup onbeforepaste=""alert(1)"" contenteditable>test</colgroup>")))
(assert (str.in_re x (re.union (re.inter (re.++ re.all (str.to_re "lt;XSS") re.all) ((_ re.from_regex ecma2020) "^[A-z0-9]{4,30}$")) ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!hotmail.co.il)(?!walla.co.il)(?!mail.ru)(?!outlook.com)(?!email.com)[a-z0-9.-]+\.[a-z]{2,}$"))))
(check-sat)
