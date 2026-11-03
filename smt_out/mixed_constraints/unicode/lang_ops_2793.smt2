; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<abbr id=x tabindex=1 onfocusin=alert(1)></abbr>") (= x "<style>@keyframes x{}</style><legend style=""animation-name:x"" onanimationstart=""alert(1)""></legend>") (= x "<meta http-equiv=""refresh"" content=""0;javascript&colon;alert(1)""/>?")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}0-9\-]+") ((_ re.from_regex ecma2020 u) "^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{5,10}$")))))
(check-sat)
