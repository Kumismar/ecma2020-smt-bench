; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><i id=x style=""transition:color 10s"" ontransitioncance\u{1f4a9}l=alert(1)></i>") (= x "<marquee onfocusout=alert(1) tabindex=1 id=x></marquee><input autofocus>") (= x "<img src=asdf onerror=alert(document.cookie)>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z]{4,}") ((_ re.from_regex ecma2020 u) "^\d{8,10}$"))))
(check-sat)
