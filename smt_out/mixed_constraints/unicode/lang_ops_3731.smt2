; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><td ondrop=alert(1) contenteditable>drop here</td>") (= x "<thead draggable=""true"" ondragend=""alert(1)"">test</thead>") (= x "<img usemap=#x><map name=""x""><area href onfocus=alert(1) id=x>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-z0-9_-]{3,15}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9-_ ']+"))))
(check-sat)
