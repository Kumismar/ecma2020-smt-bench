; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dt onbeforep\u{1d400}aste=""alert(1)"" contenteditable>test</dt>") (= x "<area onmouseenter=""alert(1)"">test</area>") (= x "<style>@keyframes x{}</style><datalist style=""animation-name:x"" onanimationstart=""alert(1)""></datalist>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "(?=.*([\w]).*)[ \w]*") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[A-\u{17e}0-9-:&.'_ ]{2,}$") (re.inter (re.++ re.all (str.to_re "ion") re.all) ((_ re.from_regex ecma2020 u) "^[0-9]*"))))))))
(check-sat)
