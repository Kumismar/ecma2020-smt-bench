; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dialog oncopy=""alert(1)"" contenteditable>test</dialog>") (= x "<br draggable=""true"" ondrag=""alert(1)"">test</br>") (= x "<style>:target {color: red;}</style><code id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></code>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z0-9]*$") (re.inter ((_ re.from_regex ecma2020) "^\d{10}$") ((_ re.from_regex ecma2020) "(\+?)([0-9]{10,})\b")))))
(check-sat)
