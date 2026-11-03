; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<u onmouseenter=""alert(1)"">test</u>") (= x "<IMG SRC=x onvolumechange=""alert(String.fromCharCode(88,83,83))"">") (= x "<section onbeforepaste=""alert(1)"" contenteditable>test</section>")))
(assert (str.in_re x (re.union (re.inter (re.++ re.all (str.to_re "t(") re.all) (re.comp ((_ re.from_regex ecma2020 u) "^.*[a-zA-Z0-9]{3}.*$"))) (re.comp ((_ re.from_regex ecma2020 u) "^([a-zA-Z\u{e0}-\u{fa}\u{c0}-\u{da}]+\s*)+$")))))
(check-sat)
