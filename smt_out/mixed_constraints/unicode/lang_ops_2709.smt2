; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dir draggable=""true"" ondragleave=""alert(1)"">test</dir>") (= x "<template onfocusout=alert(1) tabindex=1 id=x></template><input autofocus>") (= x "<style>:target {color: red;}</style><rp id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></rp>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z ]{1,15}") ((_ re.from_regex ecma2020 u) "^[^_./<>]{1,}$")) (re.comp (re.++ (str.to_re "<d") re.all)))))
(check-sat)
