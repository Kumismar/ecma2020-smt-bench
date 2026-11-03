; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<legend oncontextmenu=""alert(1)"">test</legend>") (= x "<div draggable=""true"" contenteditable>drag me</div><optgroup ondrop=alert(1) contenteditable>drop here</optgroup>") (= x "<style>@keyframes x{}</style><figure style=""animation-name:x"" onanimationend=""alert(1)""></figure>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([0-9A-z]){17,17}$") ((_ re.from_regex ecma2020) "^[A-Za-z '\-]{2,}$")))))
(check-sat)
