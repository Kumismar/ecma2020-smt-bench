; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;IMG SRC=javascript:alert(String.fromCharCode(88,83,83))>;") (= x "alert`1`") (= x "<style>:target {color:red;}</style><var id=x style=""transition:color 1s"" ontransition\u{20000}end=alert(1)></var>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[6-9]{9}") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]{4,}@[a-zA-Z0-9-]{4,}(?:\.[a-zA-Z0-9-]+)*$"))))
(check-sat)
