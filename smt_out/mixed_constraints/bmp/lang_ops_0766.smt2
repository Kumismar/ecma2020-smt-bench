; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<param onfocusout=alert(1) tabindex=1 id=x></param><input autofocus>") (= x "&lt;STYLE TYPE=\""text/javascript\""&gt;alert('XSS');&lt;/STYLE&gt;") (= x "<style>@keyframes x{}</style><li style=""animation-name:x"" onanimationend=""alert(1)""></li>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|") ((_ re.from_regex ecma2020) "\d{5,5}")))))
(check-sat)
