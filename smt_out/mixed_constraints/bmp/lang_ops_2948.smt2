; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<input onchange=alert(1) value=xss>") (= x "<body id=x tabindex=1 ondeactivate=alert(1)></body><input id=y autofocus>") (= x "<isindex onblur=alert(1) tabindex=1 id=x></isindex><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^([0-9 /.,]){2,}$") ((_ re.from_regex ecma2020) "^[\w.%+-]+@[\w.-]+\.[\w]{2,6}$")))))
(check-sat)
