; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<A HREF=""http://0x42.0x0000066.0x7.0x93/"">XSS</A>") (= x "<style><img src=""</style><img src=x onerror=alert(123)//"">") (= x "<dfn onfocusout=alert(1) tabindex=1 id=x></dfn><input autofocus>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "^[0-9]{5,9}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9-_\.]{2,20}$")) (re.++ (str.to_re "<dfn o") re.all))))
(check-sat)
