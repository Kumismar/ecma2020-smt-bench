; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><\u{1f600}details style=""animation-name:x"" onanimationstart=""alert(1)""></details>") (= x "<fieldset onkeyup=""alert(1)"" contenteditable>test</fieldset>") (= x "<IFRAME width=""420"" height=""315"" frameborder=""0"" onload=""alert(document.cookie)""></IFRAME>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.loop 83 98) re.allchar) ((_ re.from_regex ecma2020) "^[0-9,\.]+$")) ((_ re.from_regex ecma2020) "(^\?$|^er\.[\d]{4}-[\d]{2}-[\d]{2}\.[\d.-]+)")))))
(check-sat)
