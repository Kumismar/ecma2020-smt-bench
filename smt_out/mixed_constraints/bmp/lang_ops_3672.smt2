; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><header ondrop=alert(1) contenteditable>drop here</header>") (= x "<style>@keyframes x{}</style><isindex style=""animation-name:x"" onanimationend=""alert(1)""></isindex>") (= x "<handler id=""y"">alert(127)</handler>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[_A-z ]{1,}$") (re.union ((_ re.from_regex ecma2020) "^IT\d{2}[ ][a-zA-Z]\d{3}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{3}|IT\d{2}[a-zA-Z]\d{22}$") ((_ re.from_regex ecma2020) "^[0-9]+.?[0-9]*$")))))
(check-sat)
