; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<textarea type=""text"" cols=""50"" rows=""10""></textarea>//[""'`-->]]>]</div>") (= x "<head ondblclick=""alert(1)"">test</head>") (= x "<style>:target {transform: rotate(180deg);}</style><embed id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></embed>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\d{1,8}[\-]\d{1,25}") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9-_\.]{6,}$")))))
(check-sat)
