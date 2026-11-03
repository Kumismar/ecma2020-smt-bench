; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<head draggable=""true"" ondragstart=""alert(1)"">test</head>") (= x "<svg oncontextmenu=""alert(1)"">test</svg>") (= x "<style>:target {color:red;}</style><caption id=x style=""transition:color 1s"" ontransitionend=alert(1)></caption>")))
(assert (str.in_re x (re.comp (re.union (re.union (re.++ (str.to_re "<") re.all) ((_ re.from_regex ecma2020 u) "^[a-zA-Z][0-9\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}a-zA-Z-._\- ]*$")) ((_ re.from_regex ecma2020 u) "^1[35478][0-9]{9}$")))))
(check-sat)
