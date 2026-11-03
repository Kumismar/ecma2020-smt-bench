; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\x1Djavascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<p onmouseover=""alert(1)"">test</p>") (= x "<style oncut=""alert(1)"" contenteditable>test</style>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(16)$") ((_ re.from_regex ecma2020 u) "^[A-z\u{c1}-\u{ff}\s]+$"))))
(check-sat)
