; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><textarea id=x style=""transition:transform 2s"" ontransitionrun=alert(1)><\u{10348}/textarea>") (= x "<ul onmousemove=""alert(1)"">test</ul>") (= x "<embed draggable=""true"" ondragenter=""alert(1)"">test</embed>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^0[6-7]{1}(([0-9]{2}){4})|((\s[0-9]{2}){4})|((-[0-9]{2}){4})$") ((_ re.from_regex ecma2020 u) "^[\w.-]+@[\w.-]+\.[\w.-]{2,}$"))))
(check-sat)
