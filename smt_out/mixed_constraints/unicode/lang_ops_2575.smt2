; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<video oncontextmenu=""alert(1)"">test</video>") (= x "<head onmouseover=""alert(1)"">test</head>") (= x "<title onbeforepaste=""alert(1)"" contenteditable>test</title>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[^@]+@(?!(yahoo|hotmail|gmail|googlemail|mail|email|cuoly))[^@]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020 u) "^\d{7,8}$")) ((_ re.loop 58 65) re.allchar)))))
(check-sat)
