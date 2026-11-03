; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><xss style=""animation-name:x"" onanimationstart=""alert(1)""></xss>") (= x "&lt;A HREF=\""http&#58;//google&#58;ha&#46;ckers&#46;org\""&gt;XSS&lt;/A&gt;") (= x "<form oncopy=""alert(1)"" contenteditable>test</form>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[\u{e01}-\u{e4f}\s]+$") (re.comp ((_ re.from_regex ecma2020) "[1-9][0-9]?"))))))
(check-sat)
