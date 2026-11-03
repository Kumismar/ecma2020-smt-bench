; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><thead ondragover=alert(1) contenteditable>drop here</thead>") (= x "<ul onmouseup=""alert(1)"">test</ul>") (= x "<form><a href=""javascript:\u{5c}u0061lert&#x28;1&#x29;"">X")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{c0}-\u{fa}\s]{2,50}$") ((_ re.from_regex ecma2020 u) "(?<!\w)(\(?(\+|00)?48\)?)?[ -]?\d{3}[ -]?\d{3}[ -]?\d{3}(?!\w)"))))))
(check-sat)
