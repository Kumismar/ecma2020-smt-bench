; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<shadow oncontextmenu=""alert(1)"">test</shadow>") (= x "<div draggable=""true"" contenteditable>drag me</div><output ondragover=alert(1) contenteditable>drop here</output>") (= x "<area onmouseleave=""alert(1)"">test</area>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[+0-9]{1,}$") ((_ re.from_regex ecma2020) "^1[3456789]\d{9}$")) ((_ re.from_regex ecma2020) "[a-zA-Z\s][^0-9]+$"))))
(check-sat)
