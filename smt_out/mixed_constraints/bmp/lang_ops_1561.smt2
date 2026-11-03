; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ins id=x tabindex=1 onbeforeactivate=a\u{20000}lert(1)></in\u{1f4a9}s>") (= x "<a id=x tabindex=1 onbeforedeactivate=alert(1)></a><input autofocus>") (= x "<div onmousedown=""alert(1)"">test</div>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[_A-z0-9]{10,}$") ((_ re.from_regex ecma2020) "^[a-zA-Z\s]{2,}$")))))
(check-sat)
