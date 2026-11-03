; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<small draggable=""true"" ondragenter=""alert(1)"">test</small>") (= x "<style>@keyframes x{}</style><select style=""animation-name:x"" onanimationend=""alert(1)""></select>") (= x "<ul oncopy=""alert(1)"" contenteditable>test</ul>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z-.\u{f3}]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}]|[-z0-9-\s])+$") (re.comp ((_ re.from_regex ecma2020 u) "^\S.{6,}\S$"))))))
(check-sat)
