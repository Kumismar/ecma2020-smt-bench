; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<xss id=x tabindex=1 onfocus=alert(1)></xss>") (= x "<a onmousedown=""alert(1)"">test</a>") (= x "<head draggable=""true"" ondragend=""alert(1)"">test</head>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "/head>")) (re.comp (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[6-9]{1}[0-9]{9}$") ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z])((?=.*\d)|(?=.*\W))(?!.*\s).{8,30}")) ((_ re.from_regex ecma2020 u) "^[_A-z0-9]{3,}$"))))))
(check-sat)
