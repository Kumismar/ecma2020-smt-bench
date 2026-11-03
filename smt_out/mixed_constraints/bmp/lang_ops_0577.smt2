; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<del onmouseout=""alert(1)"">test</del>") (= x "<noframes onbeforecopy=""alert(1)"" contenteditable>test</noframes>") (= x "<picture onmousedown=""alert(1)"">test</picture>")))
(assert (not (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z]{3,10}$") ((_ re.loop 29 40) re.allchar)) ((_ re.from_regex ecma2020) "(\d{11}|\d{14})")))))
(check-sat)
