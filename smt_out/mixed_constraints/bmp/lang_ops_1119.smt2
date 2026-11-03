; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<image id=x tabindex=1 onbeforedeactivate=alert(1)></image><input autofocus>") (= x "<td onpaste=""alert(1)"" contenteditable>test</td>") (= x "<style>@keyframes x{}</style><colgroup style=""animation-name:x"" onanimationend=""alert(1)""></colgroup>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "VXKRI2D4FR") ((_ re.from_regex ecma2020) "^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{6,10}$"))))
(check-sat)
