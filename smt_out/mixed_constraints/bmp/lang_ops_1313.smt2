; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><caption id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></caption>") (= x "<style>@keyframes x{}</style><dl style=""animation-name:x"" onanimationend=""alert(1)""></dl>") (= x "<button onbeforepaste=""alert(1)"" contenteditable>test</button>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^^[0-9]\d*(\.\d+)?$") (re.comp (re.union (re.++ re.all (str.to_re "on>")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$")))) (re.comp ((_ re.from_regex ecma2020) "(\+[0-9]{3}?[0-9]?[0-9]{4}?[0-9]{4}|[0-9]{3}?[0-9]{3}?[0-9]{3,4}|[0-9]{9,10})")))))
(check-sat)
