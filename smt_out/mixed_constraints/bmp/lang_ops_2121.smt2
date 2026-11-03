; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<footer onmouseleave=""alert(1)"">test</footer>") (= x "<noembed onmousemove=""alert(1)"">test</noembed>") (= x """><img src=x onerror=javascript:alert((""1""))>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^\d{3}\d{3}\d{4}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[\a-zA-Z0-9._%+-.]+\w")) (re.comp (re.++ re.all (str.to_re "ed>"))))))
(check-sat)
