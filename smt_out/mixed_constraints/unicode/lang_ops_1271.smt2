; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<cite ondblclick=""alert(1)"">t\u{1d400}est</cite>") (= x "<style>@keyframes x{}</style><nobr style=""animation-name:x"" onanimationend=""alert(1)""></nobr>") (= x "<abbr onmousemo\u{20000}ve=""alert(\u{1f4a9}1)"">test</abbr>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[0-9a-zA-Z\-\\_#?]{7,12}") (re.inter ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}-]{2,20})+$") (re.comp ((_ re.from_regex ecma2020 u) "([A-Za-z]{2})?[0-9]{10}"))))))
(check-sat)
