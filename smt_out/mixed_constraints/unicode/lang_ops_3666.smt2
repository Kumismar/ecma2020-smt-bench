; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<track onmousemove=""alert(1)"">test</track>") (= x "<details draggable=""true"" ondragstart=""alert(1)"">test</details>") (= x "<s onpaste=""alert(1)"" contenteditable>test</s>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.loop 46 55) re.allchar) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+([\.]{1})[0-9a-zA-Z\._-]+$")) ((_ re.from_regex ecma2020 u) ".*^[0-9]{2,4}-*[0-9]{2,4}-*[0-9]{4}$.*"))))
(check-sat)
