; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><dfn id=x style=""transition:color 1s"" ontransitionend=alert(1)></dfn>") (= x """><script>alert(String.fromCharCode(66, 108, 65, 99, 75, 73, 99, 101))</script>") (= x "<bdo onmouseup=""alert(1)"">test</bdo>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[1]?[124]$") ((_ re.from_regex ecma2020 u) "(.+@)(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!abc.com)(?!xyz.com)(?!pqr.com)(?!rediffmail.com)(?!live.com)(?!outlook.com)(?!me.com)(?!msn.com)(?!ymail.com)"))))
(check-sat)
