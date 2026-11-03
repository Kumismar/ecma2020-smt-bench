; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "</br style=a:expression(alert())>") (= x "<style>@keyframes x{}</style><noframes style=""animation-name:x"" onanimationend=""alert(1)""></noframes>") (= x "<var id=x tabindex=1 onfocusin=alert(1)></var>")))
(assert (str.in_re x (re.comp (re.union (re.union (re.++ (str.to_re "<v") re.all) ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5]{0,}$")) ((_ re.from_regex ecma2020) "^[-0-9]{1,}$")))))
(check-sat)
