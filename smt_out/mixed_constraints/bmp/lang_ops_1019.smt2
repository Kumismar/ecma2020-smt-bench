; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<output onkeyup=""alert(1)"" contentedita\u{1f600}ble>test</ou\u{1f4a9}tput>") (= x "<style>@keyframes x{}</style><center style=""animation-name:x"" onanimationstart=""alert(1)""></center>") (= x "<b onmouseup=""alert(1)"">test</b>")))
(assert (str.in_re x (re.inter (re.union (re.++ (str.to_re "<b ") re.all) (re.inter ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z\u{c4}\u{e4}\u{d6}\u{f6}\u{dc}\u{fc}\u{df}])().{4,}") ((_ re.from_regex ecma2020) "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$"))) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,4}$"))))
(check-sat)
