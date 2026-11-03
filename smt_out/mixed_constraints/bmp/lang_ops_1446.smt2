; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script\x20type=""text/javascript"">javascript:alert(1);</script>") (= x "<image ondblclick=""alert(1)"">test</image>") (= x "<style>:target {color: red;}</style><meter id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></meter>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(0|\+)\d{2,}[0-9-/\s]*$") ((_ re.from_regex ecma2020) "^([0-9\-\(\) ]*)$")))))
(check-sat)
