; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noframes onblur=alert(1) tabindex=1 id=x></noframes><input autofocus>") (= x "<body onLoad=""while(true) alert('XSS');"">") (= x "<image id=x tabindex=1 onfocusin=alert(1)></image>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\+\d+$") ((_ re.from_regex ecma2020 u) "^([A-Z]|[a-z]|[0-9]){8,11}$")))))
(check-sat)
