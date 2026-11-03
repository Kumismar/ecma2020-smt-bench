; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><source id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></source>") (= x "<style onmouseleave=""alert(1)"">test</style>") (= x "<meter draggable=""true"" ondragstart=""alert(1)"">test</meter>")))
(assert (not (str.in_re x (re.comp (re.diff (re.inter ((_ re.from_regex ecma2020) "^[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z0-9]{2,4})$") (re.comp ((_ re.from_regex ecma2020) "^([(][0-9]{1,3}[)][-]?)?([0-9][-]?){3,16}[0-9]$"))) ((_ re.from_regex ecma2020) "^[0-9() -]+$"))))))
(check-sat)
