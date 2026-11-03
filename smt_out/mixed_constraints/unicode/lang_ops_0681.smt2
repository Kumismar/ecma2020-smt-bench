; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<BODY ONLOAD=alert(\u{2018}XSS\u{2019})>") (= x "<option onmousedown=""alert(1)"">test</option>") (= x "<svg><multicol onload=alert(1)></multicol>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9]{0,40}$") (re.diff (re.++ re.all (str.to_re "Y ONL") re.all) ((_ re.from_regex ecma2020 u) "^[A-Za-z _]*[A-Za-z][A-Za-z _]*$")))))
(check-sat)
