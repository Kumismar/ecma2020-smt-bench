; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noscript id=x tabindex=1 onbeforedeactivate=alert(1)></noscript><input autofocus>") (= x "<textarea onauxclick=alert(1)>XSS</textarea>") (= x "<img onclick=""alert(1)"">test</img>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "alpha_numeric_space") ((_ re.from_regex ecma2020 u) "^(([a-zA-Z]|[0-9])|([-]|[_]|[.]))+[@](([a-zA-Z0-9])|([-])){2,63}[.](([a-zA-Z0-9]){2,63})+$")))))
(check-sat)
