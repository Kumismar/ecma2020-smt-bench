; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<li id=x tabindex=1 onactivate=alert(1)></li>") (= x "<iframe onpaste=""alert(1)"" contenteditable>test</iframe>") (= x "<center oncontextmenu=""alert(1)"">test</center>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}\s]+$") (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{1,12}$") (re.inter (re.++ re.all (str.to_re "1)""") re.all) ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9 ].{3,50}")))))))
(check-sat)
