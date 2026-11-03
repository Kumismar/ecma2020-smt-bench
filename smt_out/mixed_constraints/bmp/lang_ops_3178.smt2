; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<del onmouseover=""alert(1)"">test</del>") (= x "<iframe id=x onfocus=alert(1)>") (= x "<listing draggable=""true"" ondragleave=""alert(1)"">test</listing>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$") ((_ re.from_regex ecma2020) "[0-9]{1,15}$")))))
(check-sat)
