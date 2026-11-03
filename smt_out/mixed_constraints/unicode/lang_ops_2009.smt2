; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b onkeyup=""alert(1)"" contenteditable>test</b>") (= x "<var onpaste=""alert(1)"" contenteditable>test</var>") (= x "<head onkeydown=""alert(1)"" contenteditable>test</head>")))
(assert (str.in_re x (re.inter (re.diff (re.++ re.all (str.to_re "rt(1)""") re.all) ((_ re.from_regex ecma2020 u) "^([+ 0-9]){3,}$")) ((_ re.from_regex ecma2020 u) "(^\d{5}$)|(^\d{9}$)|(^\d{5}-\d{4}$)"))))
(check-sat)
