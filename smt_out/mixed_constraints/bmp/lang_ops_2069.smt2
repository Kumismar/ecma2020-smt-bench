; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><option style=""animation-name:x"" onanimationend=""alert(1)""></option>") (= x "<div draggable=""true"" contenteditable>drag me</div><figure ondrop=alert(1) contenteditable>drop here</figure>") (= x "<rb onpaste=""alert(1)"" contenteditable>test</rb>")))
(assert (str.in_re x (re.comp (re.diff (re.++ re.all (str.to_re "tyl") re.all) (re.diff ((_ re.from_regex ecma2020) "^[0-9]{10}") ((_ re.from_regex ecma2020) "^a+\d{8}$"))))))
(check-sat)
