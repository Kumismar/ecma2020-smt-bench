; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<plaintext id=x tabindex=1 onbeforedeactivate=alert(1)></plaintext><input autofocus>") (= x "<dfn oncontextmenu=""alert(1)"">test</dfn>") (= x "<style>@keyframes x{}</style><output style=""animation-name:x"" onanimationstart=""alert(1)""></output>")))
(assert (str.in_re x (re.inter ((_ re.loop 39 44) re.allchar) (re.diff ((_ re.from_regex ecma2020) "[\d+\-*%^()]{3,}") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{0,20}$")))))
(check-sat)
