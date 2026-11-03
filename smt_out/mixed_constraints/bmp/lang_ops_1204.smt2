; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<meta onmouseup=""alert(1)"">test</meta>") (= x "<link onmouseout=""alert(1)"">test</li\u{10348}nk>") (= x "<iframe onbeforecopy=""alert(1)"" contenteditable>test</iframe>")))
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^04[56789]\d{7}$") ((_ re.loop 39 40) re.allchar)) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]{6,28}$")))))
(check-sat)
