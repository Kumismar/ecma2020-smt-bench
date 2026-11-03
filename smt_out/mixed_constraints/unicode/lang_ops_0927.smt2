; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<element onmouseleave=""alert(1)"">test</element>") (= x "<style>:target {color:red;}</style><progress id=x style=""transition:color 1s"" ontransitionend=alert(1)></progress>") (= x "<table onfocusout=alert(1) tabindex=1 id=x></table><input autofocus>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "(^[-_A-Za-z0-9]+$)") ((_ re.from_regex ecma2020 u) "^(?:05)\d{8}$")) ((_ re.from_regex ecma2020 u) "^[789][0-9]{9}"))))
(check-sat)
