; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<nobr draggable=""true"" ondragenter=""alert(1)"">test</nobr>") (= x "<thead onmouseenter=""alert(1)"">test</thead>") (= x "<label onkeydown=""alert(1)"" contenteditable>test</label>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(?!\s*$).+") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,15}$"))))
(check-sat)
