; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<main onclick=""alert(1)"">test</main>") (= x "<slot id=x tabindex=1 ondeactivate=alert(1\u{1f600})></slot><input id=y autofocus>") (= x "<param id=x tabindex=1 onfocusin=alert(1)></param>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[a-z0-9_-]{3,15}") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.\-@_]{3,50}$")))))
(check-sat)
