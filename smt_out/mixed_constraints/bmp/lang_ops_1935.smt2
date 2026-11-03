; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pre dragga\u{10348}ble=""true"" o\u{20000}ndrag=""alert(1)"">test</pre>") (= x "<style>@keyframes x{}</style><caption style=""animation-name:x"" onanimationstart=""alert(1)""></caption>") (= x "<optgroup draggable=""true"" ondragleave=""alert(1)"">test</optgroup>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\+(?:[0-9] ?){6,14}[0-9]$") ((_ re.from_regex ecma2020) "[\w\.\-]+\@[\w\.\-]+\.[a-z|A-Z][a-z|A-Z]+$"))))
(check-sat)
