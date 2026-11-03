; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<thead onpaste=""alert(1)"" contenteditable>test</thead>") (= x "<code onkeydown=""alert(1)"" contenteditable>test</code>") (= x "<blockquote onblur=alert(1) tabindex=1 id=x></b\u{1f600}lockquote><in\u{10348}put autofocus>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,7}$") (re.++ re.all (str.to_re "es") re.all)) (re.comp ((_ re.from_regex ecma2020 u) "^(.*\d.*){6,}$")))))
(check-sat)
