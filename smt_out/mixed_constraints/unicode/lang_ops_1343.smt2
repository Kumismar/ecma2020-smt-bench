; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><output id=x style=""transition:color 1s"" ontransitionend=alert(1)></output>") (= x "<output onmouseup=""alert(1)"">test</output>") (= x "<body onblur body onblur=""javascript:javascript:alert(1)""></body onblur>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(^\d{3}-\d{3}-\d{4}$|^\d{10}$)") ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$")))))
(check-sat)
