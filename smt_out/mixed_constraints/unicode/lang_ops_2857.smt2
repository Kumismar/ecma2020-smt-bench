; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<button oncontextme\u{1f600}n\u{1f600}u=""alert(1)"">test</button>") (= x "<xmp onmouseenter=""alert(1)"">test</xmp>") (= x "<area draggable=""true"" ondragstart=""alert(1)"">test</area>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[^ ].*") (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{8}[A-Z]$")))))
(check-sat)
