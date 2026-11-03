; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><embed style=""animation-name:x"" onanimationstart=""alert(1)""></embed>") (= x "<dl draggable=""true"" ondragleave=""alert(1)"">test</dl>") (= x "<output ondblclick=""alert(1)"">test</output>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(?=[-a-zA-Z0-9@_*.]*$).*") ((_ re.from_regex ecma2020 u) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$")))))
(check-sat)
