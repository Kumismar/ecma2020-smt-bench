; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><applet id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></applet>") (= x "<content oncontextmenu=""alert(1)"">test</content>") (= x "&lt;A HREF=&quot;//google&quot;&gt;XSS&lt;/A&gt;")))
(assert (str.in_re x (re.comp (re.union ((_ re.loop 42 58) re.allchar) (re.union ((_ re.from_regex ecma2020) "\d{2}[\/]\d{3}[\-]\d{4}") ((_ re.from_regex ecma2020) "[a-z0-9A-Z._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"))))))
(check-sat)
