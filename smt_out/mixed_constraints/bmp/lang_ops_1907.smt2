; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<strike onmouseover=""alert(1)"">test</strike>") (= x "<shadow onmousemove=""alert(1)"">test</shadow>") (= x "<q onmouseenter=""alert(1)"">test</q>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re ">")) (re.diff ((_ re.from_regex ecma2020) "\w+(\.\w+)?") ((_ re.from_regex ecma2020) "^[.a-zA-z0-9_-]{1,}[@][a-z0-9_-]{1,}[.][a-z.]{3,}$")))))
(check-sat)
