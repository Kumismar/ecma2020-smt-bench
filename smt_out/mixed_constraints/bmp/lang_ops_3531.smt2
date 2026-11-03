; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div id=""66""><?xml version=""1.0""?>") (= x "<style>@keyframes x{}</style><tt style=""animation-name:x"" onanimationstart=""alert(1)""></tt>") (= x "</XSS/*-*/STYLE=xss:e/**/xpression(alert('XSS'))>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[^!@#$^&%*()+=[\]\/{}|:<>?,.\t]+$") ((_ re.from_regex ecma2020) "^[0-999999999999]*$")))))
(check-sat)
