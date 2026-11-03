; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><picture style=""animation-name:x"" onanimationstart=""alert(1)""></picture>") (= x "<image draggable=""true"" ondragend=""alert(1)"">test</image>") (= x "&#X0003C;")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[0-9]{9,16}") (re.comp ((_ re.from_regex ecma2020) "^\s?\d{3}-\d{6}?$")))))
(check-sat)
