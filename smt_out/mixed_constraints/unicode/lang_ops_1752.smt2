; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><input id=x style=""transition:color 1s"" ontransitionend=alert(1)></input>") (= x "<svg><script ?>a\u{1f4a9}lert(1)") (= x "<style>@keyframes x{}</style><blink style=""animation-name:x"" onanimationend=""alert(1)""></blink>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(.*\d.*){6,}$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?)+$"))))))
(check-sat)
