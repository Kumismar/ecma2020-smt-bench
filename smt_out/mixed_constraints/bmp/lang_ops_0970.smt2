; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<object onbeforecopy=""alert(1)"" c\u{1f4a9}ontenteditable>test</object>") (= x "<style>@keyframes x{}</style><a style=""animation-name:x"" onanimationstart=""alert(1)""></a>") (= x "<col ondblclick=""alert(1)"">test</col>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(.){2,}$") ((_ re.from_regex ecma2020) "(.{4,50})"))))
(check-sat)
