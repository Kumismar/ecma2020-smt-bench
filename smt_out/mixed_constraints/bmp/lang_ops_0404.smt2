; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<table onbeforepaste=""alert(1)"" contenteditable>test</table>") (= x "<IMG SRC=x ononline=""alert(Strin\u{20000}g.fromCharCode(88\u{1d400},83,83))"">") (= x "</script><img/*/src=""worksinchrome&colon;prompt&#x28;1&#x29;""/*/onerror='eval(src)'>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^[9|6|7][0-9]{8}$") (re.++ re.all (str.to_re "ble on") re.all)) ((_ re.from_regex ecma2020) "^([1-9]\d*|0)(\.\d+)?$"))))
(check-sat)
