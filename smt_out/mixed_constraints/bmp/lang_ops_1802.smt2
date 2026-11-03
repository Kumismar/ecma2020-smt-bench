; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<script\x0Atype=""text/javascript"">javascript:alert(1);</script>") (= x "<basefont draggable=""true"" ondragend=""alert(1)"">test</basefont>") (= x "<style>:target {color: red;}</style><menuitem id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></menuitem>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9]{0,1}$") (re.++ re.all (str.to_re "ipt>"))) ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{1,3}$"))))
(check-sat)
