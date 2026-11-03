; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<TABLE><TD BACKGROUND=""javascript:alert('XSS')"">") (= x "<marquee id=x tabindex=1 onbeforedeactivate=alert(1)></marquee><input autofocus>") (= x "<style>@keyframes x{}</style><tbody style=""animation-name:x"" onanimationstart=""alert(1)""></tbody>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-z]{2,5}$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{10,13}") (re.++ re.all (str.to_re "<tb") re.all))))))
(check-sat)
