; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<cite onmouseover=""alert(1)"">test</cite>") (= x "<head onmouseover=""alert(1)"">test</head>") (= x "<div draggable=""true"" contenteditable>drag me</div><style ondragover=alert(1) contenteditable>drop here</style>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z'][\sa-zA-Z-']*[a-zA-Z']'?") ((_ re.from_regex ecma2020) "[0-9\-\+]+")))))
(check-sat)
