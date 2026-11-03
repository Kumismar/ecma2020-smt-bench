; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<small oncontextmenu=""alert(1)"">test</small>") (= x "<style\u{1d400}>@keyframes x{}</style><sup style=""animation-name:x"" onanimationend=""alert(1)""></sup>") (= x "<span id=x tabindex=1 onfocus=alert(1)></span>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{7,8}-[0-9Kk]{1}$") (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_@.+-]*$"))))))
(check-sat)
