; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ul draggable=""true"" ondrag=""alert(1)"">test</ul>") (= x "&#34;&#62;<svg><style>{-o-link-source&colon;'<body/onload=confirm(1)>'") (= x "<style>@keyframes x{}</style><optgroup style=""animation-name:x"" onanimationstart=""alert(1)""></optgroup>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^[a-z0-9-_.@]{4,}$") ((_ re.from_regex ecma2020 u) "^[\d.-]+$")) (re.union ((_ re.from_regex ecma2020 u) "^[6-9]{1}[0-9]{9}$") (re.++ (str.to_re "&#34;") re.all)))))
(check-sat)
