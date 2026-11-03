; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style type=""text/css"">BODY{background:url(""javascript:document.vulnerable=true"")}</style>") (= x """`'><script>\x0Bjavascript:alert(1)</script>") (= x "<dt onkeypress=""alert(1)"" contenteditable>test</dt>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[9|6|7][0-9]{8}$") (re.diff ((_ re.from_regex ecma2020) "[A-z0-9\u{c0}-\u{17e}\s]+") ((_ re.from_regex ecma2020) "^LC\d{3,7}|lc\d{3,7}$")))))
(check-sat)
