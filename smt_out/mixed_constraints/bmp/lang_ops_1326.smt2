; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<input onbeforecopy=alert(1) value=""XSS"" autofocus>") (= x "<nobr onkeypress=""alert(1)"" contenteditable>test</nobr>") (= x "<xmp onmousedown=""alert(1)"">test</xmp>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9]{7}") ((_ re.from_regex ecma2020) "^(1)[0-9]{10}$"))))
(check-sat)
