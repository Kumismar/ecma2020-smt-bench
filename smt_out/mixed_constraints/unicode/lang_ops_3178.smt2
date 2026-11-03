; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><div style=""animation-name:x"" onanimationend=""alert(1)""></div>") (= x """`'><script>-javascript:alert(1)</script>") (= x "<image onblur=alert(1) tabindex=1 id=x></image><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\+?\d+(-\d+)*$") (re.union ((_ re.from_regex ecma2020 u) "^.* .*$") ((_ re.from_regex ecma2020 u) "^[0-9]{10}"))))))
(check-sat)
