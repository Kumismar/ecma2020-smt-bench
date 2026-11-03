; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><isindex style=""animation-name:x"" onanimationstart=""alert(1)""></isindex>") (= x "<script src=""data:\xCB\x8F,javascript:alert(1)""></script>") (= x "<ul onmousedown=""alert(1)"">test</ul>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z\s]+$") (re.comp ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,10}$"))))))
(check-sat)
