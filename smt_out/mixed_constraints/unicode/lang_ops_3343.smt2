; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><element ondrop=alert(1) contenteditable>drop here</element>") (= x "<applet oncontextmenu=""alert(1)"">test</applet>") (= x "<st\u{1f600}yle>:target {color: red;}</style><objec\u{1f4a9}t id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></object>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-zA-Z]).{8,}") ((_ re.from_regex ecma2020 u) "^\S{6,32}$")) (re.++ (str.to_re "<") re.all))))
(check-sat)
