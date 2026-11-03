; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b onmousemove=""alert(\u{10348}1)"">test</b>") (= x "<style>:target {color:red;}</style><style id=x style=""transition:color 1s"" ontransitionend=alert(1)></style>") (= x "<spacer id=x tabindex=1 onfocusin=alert(1)></spacer>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[^\f\n\r\t\v]{2,44}$") (re.++ re.all (str.to_re "nsiti") re.all)) ((_ re.from_regex ecma2020 u) "[0-9]{3}[0-9]{3}[0-9]{4}"))))
(check-sat)
