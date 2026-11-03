; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sty\u{1f4a9}le>@keyframes x{}</style><shadow style=""animation\u{1d400}-name:x"" onanimationstart=""alert(1)""></shadow>") (= x "<tt onmouseenter=""alert(1)"">test</tt>") (= x "<big id=x tabindex=1 onactivate=alert(1)></big>")))
(assert (not (str.in_re x (re.diff (re.inter (re.++ (str.to_re "<big") re.all) ((_ re.from_regex ecma2020) "^([0-9]){10,}$")) (re.inter ((_ re.from_regex ecma2020) "^\S{6,}$") ((_ re.from_regex ecma2020) "[0-9]+[\.]{0,1}[0-9]*"))))))
(check-sat)
