; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<isindex onblur=alert(1) tabindex=1 id=x></isindex><input autofocus>") (= x "<div id=x tabindex=1 onfocus=alert(1)></div>") (= x "<style>@keyframes x{}</style><font style=""animation-name:x"" onanimationend=""alert(1)""></font>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(0[1-9]|1[0-2])\/\d{2}$") (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9 ]+") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4})*$"))))))
(check-sat)
