; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><blink style=""animation-name:x"" onanimationend=""alert(1)""></blink>") (= x "<article onkeyup=""alert(1)"" contenteditable>test</article>") (= x "<meter onbeforecopy=""alert(1)"" contenteditable>test</meter>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[^@<>\t\r\n]+$") ((_ re.from_regex ecma2020 u) "\d\d\d\.\d\d\d\.\d\d\d-\d\d$"))))
(check-sat)
