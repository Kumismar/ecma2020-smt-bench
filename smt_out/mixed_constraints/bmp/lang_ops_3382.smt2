; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<shadow id=x tabindex=1 onbeforedeactivate=alert(1)></shadow><input autofocus>") (= x "<marquee onmousedown=""alert(1)"">test</marquee>") (= x "<style>@keyframes x{}</style><br style=""animation-name:x"" onanimationend=""alert(1)""></br>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_\-\.\+]{1,}@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,4}$") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_.]{1,20}$")))))
(check-sat)
