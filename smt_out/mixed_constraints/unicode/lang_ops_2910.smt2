; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<kbd onmouseover=""alert(1)"">test</kbd>") (= x "<center onclick=""alert(1)"">test</center>") (= x "<IMG SRC=x onreset=""alert(String.fromCharCode(88,83,83))"">")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{1,15}$"))))
(check-sat)
