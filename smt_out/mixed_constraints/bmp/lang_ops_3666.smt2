; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><sup onload=alert(1)></sup>") (= x "<bdo oncopy=""alert(1)"" contenteditable>test</bdo>") (= x "<bdo onmouseup=""alert(1)"">test</bdo>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(?!0{5})\d{7,12}$") (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}._%+-]+@[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}.-]+\.[A-Za-z]{2,16}$")))))
(check-sat)
