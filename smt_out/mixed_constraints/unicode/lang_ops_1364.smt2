; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdo onbeforecopy=""alert(1)"" contenteditable>test</bdo>") (= x "<menuitem onbeforecopy=""alert(1)"" contenteditable>test</menuitem>") (= x "<li onbeforecut=""alert(1)"" contenteditable>test</li>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d+(?:\.\d{0,2})$") ((_ re.from_regex ecma2020 u) "[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}|\u{3000}| ]+$")))))
(check-sat)
