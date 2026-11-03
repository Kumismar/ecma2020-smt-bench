; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><ol style=""animation-name:x"" onanimationend=""alert(1)""></ol>") (= x "<dir onbeforecut=""alert(1)"" contenteditable>test</dir>") (= x "<element id=x tabindex=1 onfocus=alert(1)></element>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){2,50}$") (re.union ((_ re.from_regex ecma2020 u) "[0-9\.]+") ((_ re.loop 47 57) re.allchar))))))
(check-sat)
