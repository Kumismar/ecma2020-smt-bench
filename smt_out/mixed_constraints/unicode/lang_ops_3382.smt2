; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dir onmouseout=""alert(1)"">test</dir>") (= x "<style>:target {color: red;}</style><section id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></section>") (= x "<div id=""127""><svg xmlns=""http://www.w3.org/2000/svg"" id=""x"">")))
(assert (str.in_re x (re.comp (re.inter (re.union ((_ re.from_regex ecma2020 u) "^\+?(1 ?-?)?[0-9]{3}-?[0-9]{3}-?[0-9]{4}$") ((_ re.from_regex ecma2020 u) "(?!00)[0-3][0-9]")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z- _\.]{1,25}$")))))
(check-sat)
