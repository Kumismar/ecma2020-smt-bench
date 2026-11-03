; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><datalist id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></datalist>") (= x "<style>@keyframes x{}</style><s style=""animation-name:x"" onanimationstart=""alert(1)""></s>") (= x "<style draggable=""true"" ondragleave=""alert(1)"">test</style>")))
(assert (not (str.in_re x (re.diff (re.++ re.all (str.to_re """></s>")) (re.diff ((_ re.from_regex ecma2020 u) "^(\+[0-9]{1,5})?([1-9][0-9]{9})$") ((_ re.from_regex ecma2020 u) "^(?:\D*\d){3,}\D*$"))))))
(check-sat)
