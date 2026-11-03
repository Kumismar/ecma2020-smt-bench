; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<listing oncontextmenu=""alert(1)"">test</listing>") (= x "alert(String.fromCharCode(88,83,83))//"";alert(String.fromCharCo\u{1d400}de(88,83,83))//--") (= x "<footer onbeforecopy=""alert(1)"" contenteditable>test</footer>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^0[1-9]\d{8}") ((_ re.from_regex ecma2020 u) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$")) ((_ re.from_regex ecma2020 u) "(0[1-9]|1[0-9]|2[0-9]|3[01])"))))
(check-sat)
