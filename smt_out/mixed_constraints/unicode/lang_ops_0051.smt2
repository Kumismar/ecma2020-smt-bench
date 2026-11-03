; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><blink style=""animation-name:x"" onanimationend=""alert(1)""></blink>") (= x "<blink onkeypress=""alert(1)"" contenteditable>test</blink>") (= x "<rp id=x tabindex=1 onbeforeactivate=alert(1)></rp>")))
(assert (not (str.in_re x (re.inter (re.++ re.all (str.to_re "rp>")) (re.inter ((_ re.from_regex ecma2020 u) "^\+?[0-9]{8,14}$") (re.inter ((_ re.from_regex ecma2020 u) "^[1-9][0-9]{7,12}$") (re.comp ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$"))))))))
(check-sat)
