; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<blink ondbl\u{1d400}click=\u{1f4a9}""alert(1)"">test</blink>") (= x "<q draggable=""true"" ondragleave=""alert(1)"">test</q>") (= x "<style>@keyframes x{}</style><p style=""animation-name:x"" onanimationstart=""alert(1)""></p>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[0-9\u{ff10}-\u{ff19}]+$") ((_ re.from_regex ecma2020 u) "^(([+]{1,2}[0-9]{2,3})|[0]{1})[0-9]{0,10}[(]{0,1}[0-9]{1,10}[)]{0,1}[0-9]{1,10}[\s|\/|-]{0,1}[0-9]{2,10}[\s|\/|-]{0,1}[0-9]{0,10}$"))))
(check-sat)
