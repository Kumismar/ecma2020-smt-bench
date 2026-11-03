; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<<SCRIPT>alert(""XSS"");//<</SCRIPT>") (= x "<optgroup onblur=alert(1) tabindex=1 id=x></optgroup><input autofocus>") (= x "<i onmouseenter=""alert(1)"">test</i>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[0-9-()]*$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$")))))
(check-sat)
