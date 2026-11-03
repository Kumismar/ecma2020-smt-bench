; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<\u{1f4a9}t\u{1f600}foot ondblclick=""alert(1)"">test</tfoot>") (= x "<style>@keyframes x{}</style><time style=""animation-name:x"" onanimationend=""alert(1)""></time>") (= x "<object onmouseleave=""alert(1)"">test</object>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._*?%+-]{6,30}$") (re.diff (re.diff ((_ re.from_regex ecma2020 u) "\d+(\.\d+)?$") (re.++ (str.to_re "<\u{1f4a9}") re.all)) ((_ re.from_regex ecma2020 u) "^.{0,40}")))))))
(check-sat)
