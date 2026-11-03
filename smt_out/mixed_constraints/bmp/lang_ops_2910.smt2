; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><slot id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></slot>") (= x "<script src=""/\%(jscript)s""></script>") (= x "<p onmouseover=""alert(1)"">test</p>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^((\+48)[0-9]{9})$") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{6}"))))
(check-sat)
