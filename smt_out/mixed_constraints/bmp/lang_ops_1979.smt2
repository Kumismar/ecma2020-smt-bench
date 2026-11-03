; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<param onfocusout=alert(1) tabindex=1 id=x></param><input autofocus>") (= x "<legend onmouseup=""alert(1)"">test</le\u{1f600}gend>") (= x """><h1><IFRAME SRC=""javascript:alert('XSS');""></IFRAME>"">123</h1>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$") ((_ re.from_regex ecma2020) "^(?=.*[0-9].*)(?=.*[A-Z].*)(?=.*[a-z].*).{8,}$")) ((_ re.from_regex ecma2020) "[[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"))))
(check-sat)
