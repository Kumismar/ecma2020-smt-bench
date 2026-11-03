; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rtc oncopy=""alert(1)"" contenteditable>test</rtc>") (= x "<p onmousedown=""alert(1)"">test</p>") (= x "<dt oncontextmenu=""alert(1)"">test</dt>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9-\s]+$") ((_ re.from_regex ecma2020 u) "[a-z0-9.%+-]+@[a-z0-9.-]+.[a-z]{2,4}$"))))
(check-sat)
