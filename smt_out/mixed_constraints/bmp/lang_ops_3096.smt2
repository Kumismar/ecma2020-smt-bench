; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<strike draggable=""true"" ondrag=""alert(1)"">test</strike>") (= x "<style>@keyframes x{}</style><slot style=""animation-name:x"" onanimationstart=""alert(1)""></slot>") (= x "<link onbeforepaste=""alert(1)"" contenteditable>test</link>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\-]{5,15}$") ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z-]+$")))))
(check-sat)
