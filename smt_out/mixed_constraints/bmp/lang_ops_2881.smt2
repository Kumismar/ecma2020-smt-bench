; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dt onkeydown=""alert(1)"" contenteditable>test</dt>") (= x "<style>@keyframes x{}</style><address style=""animation-name:x"" onanimationstart=""alert(1)""></address>") (= x "<command onpaste=""alert(1)"" contenteditable>test</command>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.loop 98 111) re.allchar) ((_ re.from_regex ecma2020) "^(([X-Z]{1})(\d{7})([A-Z]{1}))|((\d{8})([A-Z]{1}))|(([A-Z]{1})(\d{8}))$")) ((_ re.from_regex ecma2020) "^\d*(\.\d{4}$)?")))))
(check-sat)
