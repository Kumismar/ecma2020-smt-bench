; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<col draggable=""true"" ondrag=""alert(1)"">test</col>") (= x "<;IMG SRC="";jav&;#x09;ascript:alert(';XSS';);"";>;") (= x "<style>:target {color:red;}</style><button id=x style=""transition:color 1s"" ontransitionend=alert(1)></button>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020 u) "^[1-9][0-9]*$") ((_ re.from_regex ecma2020 u) "[^a-zA-Z]{5,}$")) ((_ re.from_regex ecma2020 u) "^[^\s]+[-a-zA-Z0-9\s]+([-a-zA-Z0-9]+)*$"))))
(check-sat)
