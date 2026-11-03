; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<li id=x tabindex=1 onbeforeactivate=alert(1)></li>") (= x "alert;pg(""XSS"")") (= x "<XML SRC=""http://ha.ckers.org/xsstest.xml"" ID=I></XML>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^([0-9]){5}") ((_ re.from_regex ecma2020 u) "^[0-9]{9,12}")) (re.++ (str.to_re "<li ") re.all))))
(check-sat)
