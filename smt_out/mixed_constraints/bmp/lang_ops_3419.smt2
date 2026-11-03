; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><bdi id=x style=""transition:color 1s"" ontransitionend=alert(1)></bd\u{1f4a9}i>") (= x "&lt;IMG SRC=&#x6A&#x61&#x76&#x61&#x73&#x63&#x72&#x69&#x70&#x74&#x3A&#x61&#x6C&#x65&#x72&#x74&#x28&#x27&#x58&#x53&#x53&#x27&#x29&gt;") (= x "<font id=x tabindex=1 onfocusin=alert(1)></font>")))
(assert (str.in_re x (re.union (re.inter (re.++ (str.to_re "&") re.all) ((_ re.from_regex ecma2020) "^-?\d+\.?\d*$")) ((_ re.from_regex ecma2020) "^\+\d+$"))))
(check-sat)
