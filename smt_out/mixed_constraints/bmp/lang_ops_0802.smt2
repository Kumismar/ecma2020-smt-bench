; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dialog onkeypress=""alert(1)"" contenteditable>test</dialog>") (= x "<object type=""\u{10348}text/x-scriptlet"" dat\u{10348}a=""http://jsfiddle.net/XLE63/ ""></object>") (= x "<style>@keyframes x{}</style><div style=""animation-name:x"" onanimationend=""alert(1)""></div>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[A-Za-z][0-9][A-Za-z] ? [0-9][A-Za-z][0-9]") ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,63}$"))))
(check-sat)
