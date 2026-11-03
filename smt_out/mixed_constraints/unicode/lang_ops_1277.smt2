; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><base onload=alert(1)></base>") (= x "<h1 onbeforecut=""alert(1)"" contenteditable>test</h1>") (= x "<isindex onkeydown=""alert(1)"" contenteditable>test</isindex>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{3,6}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}]+[a-zA-Z\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}'\u{2019}\- \.]{1,24}$")))))
(check-sat)
