; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<SCRIPT>a=/XSS/") (= x "<script>Object.__noSuchMethod__ = Function,[{}][0].constructor._('javascript:alert(1)')()</script>") (= x "<td onmouseover=""alert(1)"">test</td>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "S/")) (re.comp (re.inter ((_ re.from_regex ecma2020) "^\w[\w.-]*@([\w-]+\.)+[\w-]+$") ((_ re.from_regex ecma2020) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$"))))))
(check-sat)
