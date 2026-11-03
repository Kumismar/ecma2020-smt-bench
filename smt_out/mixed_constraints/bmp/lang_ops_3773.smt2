; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div>\u{10348}<keygen ondrop=alert(1) conten\u{10348}teditable>drop here</keygen>") (= x """`'><script>\xEF\xBF\xBEjavascript:alert(1)</script>") (= x "<style>:target {transform: rotate(180deg);}</style><map id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></map>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z- ]*$") ((_ re.from_regex ecma2020) "^(13[0-9]|17[0-9]|18[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$")))))
(check-sat)
