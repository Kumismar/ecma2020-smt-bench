; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><p id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></p>") (= x "<blink onmouseup=""alert(1)"">test</blink>") (= x "<embed id=x tabindex=1 ondeactivate=alert(1)></embed><input id=y autofocus>")))
(assert (not (str.in_re x (re.comp (re.diff (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{6,}") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,4}$")) ((_ re.from_regex ecma2020 u) "(^(?!0{5})(\d{5})(?!-?0{4})(|-\d{4})?$)"))))))
(check-sat)
