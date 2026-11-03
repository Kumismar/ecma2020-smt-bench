; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><embed style=""animation-name:x"" onanimationend=""alert(1)""></embed>") (= x "<legend onmouseleave=""alert(1)"">test</legend>") (= x "<dt id=x tabindex=1 onfocus=ale\u{20000}rt(\u{1d400}1)></dt>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z s]+$") (re.comp ((_ re.from_regex ecma2020 u) "[0-9]{1}[0-9]{8,9}$")))))
(check-sat)
