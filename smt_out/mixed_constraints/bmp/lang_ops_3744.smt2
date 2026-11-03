; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noembed id=x tabindex=1 ondeactivate=alert(1)></noembed><input id=y autofocus>") (= x "<style>@keyframes x{}</style><input style=""animation-name:x"" onanimationend=""alert(1)""></input>") (= x "<video ondblclick=""alert(1)"">test</video>")))
(assert (not (str.in_re x (re.diff (re.++ (str.to_re "<vi") re.all) (re.comp (re.inter ((_ re.from_regex ecma2020) "^[^@s]+@[^@s]+.[^@s]+$") ((_ re.from_regex ecma2020) "^[-!#-'*+\/-9=?^-~]+(?:\.[-!#-'*+\/-9=?^-~]+)*@[-!#-'*+\/-9=?^-~]+(?:\.[-!#-'*+\/-9=?^-~]+)+$")))))))
(check-sat)
