; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<center draggable=""true"" ondragstart=""alert(1)"">test</center>") (= x "<details onmouseout=""alert(1)"">test</details>") (= x "<h1 onbeforepaste=""alert(1)"" contenteditable>test</h1>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^\S{6,}$") (re.diff ((_ re.from_regex ecma2020 u) "([a-zA-Z0-9_.+-])+@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+") (re.++ (str.to_re "<c") re.all)))))
(check-sat)
